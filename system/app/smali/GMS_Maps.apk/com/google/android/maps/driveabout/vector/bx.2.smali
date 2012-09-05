.class public Lcom/google/android/maps/driveabout/vector/bx;
.super Lcom/google/android/maps/driveabout/vector/cI;

# interfaces
.implements Lcom/google/android/maps/driveabout/vector/b;
.implements Lr/c;
.implements Lr/j;
.implements Lr/n;


# instance fields
.field private volatile f:Z

.field private volatile g:Z

.field private h:Lx/T;

.field private final i:Lr/l;

.field private final j:Lr/h;

.field private k:Lcom/google/android/maps/driveabout/vector/bw;

.field private final l:Lcom/google/android/maps/driveabout/vector/bz;

.field private final m:Ljava/util/Set;

.field private volatile n:Ljava/util/Set;

.field private final o:Ljava/util/Map;

.field private final p:Ljava/util/Map;

.field private q:Ljava/util/List;

.field private final r:Lcom/google/android/maps/driveabout/vector/cd;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/vector/cC;Lcom/google/android/maps/driveabout/vector/cB;IIIIILandroid/content/Context;Lr/l;)V
    .registers 30

    sget-object v5, Lcom/google/android/maps/driveabout/vector/cU;->k:Lcom/google/android/maps/driveabout/vector/cU;

    new-instance v7, Lcom/google/android/maps/driveabout/vector/bB;

    move-object/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, p8

    move-object/from16 v3, p9

    invoke-direct {v7, v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/vector/bB;-><init>(Lcom/google/android/maps/driveabout/vector/cB;ILandroid/content/Context;Lr/l;)V

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x1

    const/16 v19, 0x0

    move-object/from16 v4, p0

    move-object/from16 v6, p1

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    move/from16 v13, p7

    invoke-direct/range {v4 .. v19}, Lcom/google/android/maps/driveabout/vector/cI;-><init>(Lcom/google/android/maps/driveabout/vector/cU;Lcom/google/android/maps/driveabout/vector/cC;Lcom/google/android/maps/driveabout/vector/cB;IIIIIIZZZZZZ)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/google/android/maps/driveabout/vector/bx;->f:Z

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/google/android/maps/driveabout/vector/bx;->g:Z

    invoke-static {}, LK/cw;->a()Ljava/util/HashSet;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/maps/driveabout/vector/bx;->m:Ljava/util/Set;

    invoke-static {}, LK/bu;->f()LK/bu;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/maps/driveabout/vector/bx;->n:Ljava/util/Set;

    invoke-static {}, LK/cb;->a()Ljava/util/HashMap;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/maps/driveabout/vector/bx;->o:Ljava/util/Map;

    invoke-static {}, LK/cb;->a()Ljava/util/HashMap;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/maps/driveabout/vector/bx;->p:Ljava/util/Map;

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/maps/driveabout/vector/bx;->q:Ljava/util/List;

    new-instance v4, Lcom/google/android/maps/driveabout/vector/by;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/google/android/maps/driveabout/vector/by;-><init>(Lcom/google/android/maps/driveabout/vector/bx;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/maps/driveabout/vector/bx;->r:Lcom/google/android/maps/driveabout/vector/cd;

    invoke-static {}, Lx/T;->b()Lx/T;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/maps/driveabout/vector/bx;->h:Lx/T;

    move-object/from16 v0, p9

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/maps/driveabout/vector/bx;->i:Lr/l;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/maps/driveabout/vector/bx;->i:Lr/l;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lr/l;->a(Lr/n;)V

    new-instance v4, Lr/h;

    invoke-direct {v4}, Lr/h;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/maps/driveabout/vector/bx;->j:Lr/h;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/maps/driveabout/vector/bx;->j:Lr/h;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lr/h;->a(Lr/j;)V

    new-instance v4, Lcom/google/android/maps/driveabout/vector/bz;

    const v5, 0x1d4c0

    const/16 v6, 0x12c

    invoke-direct {v4, v5, v6}, Lcom/google/android/maps/driveabout/vector/bz;-><init>(II)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/maps/driveabout/vector/bx;->l:Lcom/google/android/maps/driveabout/vector/bz;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/maps/driveabout/vector/bx;->l:Lcom/google/android/maps/driveabout/vector/bz;

    const v5, -0x7fafafb0

    invoke-virtual {v4, v5}, Lcom/google/android/maps/driveabout/vector/bz;->a(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/maps/driveabout/vector/bx;->i:Lr/l;

    invoke-virtual {v4}, Lr/l;->i()Lr/b;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-interface {v4, v0}, Lr/b;->a(Lr/c;)V

    return-void
.end method

.method private a(Lt/r;)Lcom/google/android/maps/driveabout/vector/bF;
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bx;->e:Lcom/google/android/maps/driveabout/vector/bF;

    invoke-static {v0, p1}, Lcom/google/android/maps/driveabout/vector/bD;->a(Lcom/google/android/maps/driveabout/vector/bF;Ljava/lang/Object;)Lcom/google/android/maps/driveabout/vector/bD;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/vector/bx;)Ljava/util/Set;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bx;->n:Ljava/util/Set;

    return-object v0
.end method

.method private a(Lt/q;)V
    .registers 8

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bx;->k:Lcom/google/android/maps/driveabout/vector/bw;

    if-nez v0, :cond_6

    :cond_5
    :goto_5
    return-void

    :cond_6
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bx;->k:Lcom/google/android/maps/driveabout/vector/bw;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bw;->b()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bx;->i:Lr/l;

    invoke-virtual {p1}, Lt/q;->a()Lt/r;

    move-result-object v1

    invoke-virtual {v0, v1}, Lr/l;->a(Lt/r;)Lt/y;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bx;->i:Lr/l;

    invoke-virtual {p1}, Lt/q;->a()Lt/r;

    move-result-object v2

    invoke-virtual {v1, v2}, Lr/l;->b(Lt/r;)Lt/y;

    move-result-object v1

    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bx;->i:Lr/l;

    invoke-virtual {v0}, Lt/y;->a()Lt/r;

    move-result-object v0

    invoke-virtual {v2, v0, v5, v5, v5}, Lr/l;->a(Lt/r;ZZZ)Lr/e;

    move-result-object v2

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/bx;->i:Lr/l;

    invoke-virtual {v1}, Lt/y;->a()Lt/r;

    move-result-object v4

    invoke-virtual {v3, v4, v5, v5, v0}, Lr/l;->a(Lt/r;ZZZ)Lr/e;

    move-result-object v3

    if-eqz v2, :cond_5

    if-eqz v3, :cond_5

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/bx;->m:Ljava/util/Set;

    monitor-enter v4

    :try_start_3f
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bx;->m:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_45
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_58

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr/e;

    invoke-virtual {v0}, Lr/e;->e()V

    goto :goto_45

    :catchall_55
    move-exception v0

    monitor-exit v4
    :try_end_57
    .catchall {:try_start_3f .. :try_end_57} :catchall_55

    throw v0

    :cond_58
    :try_start_58
    invoke-virtual {v2}, Lr/e;->b()F

    move-result v0

    invoke-virtual {v3}, Lr/e;->b()F

    move-result v5

    cmpl-float v0, v0, v5

    if-lez v0, :cond_88

    const/4 v0, 0x5

    invoke-virtual {v2, v0}, Lr/e;->a(I)V

    const/16 v0, 0x18

    invoke-virtual {v3, v0}, Lr/e;->a(I)V

    :goto_6d
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bx;->m:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bx;->m:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bx;->m:Ljava/util/Set;

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v4
    :try_end_7d
    .catchall {:try_start_58 .. :try_end_7d} :catchall_55

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bx;->k:Lcom/google/android/maps/driveabout/vector/bw;

    invoke-virtual {p1}, Lt/q;->a()Lt/r;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/google/android/maps/driveabout/vector/bw;->a(Lt/r;Lt/y;)V

    goto/16 :goto_5

    :cond_88
    const/16 v0, 0x14

    :try_start_8a
    invoke-virtual {v2, v0}, Lr/e;->a(I)V

    const/16 v0, 0xa

    invoke-virtual {v3, v0}, Lr/e;->a(I)V
    :try_end_92
    .catchall {:try_start_8a .. :try_end_92} :catchall_55

    goto :goto_6d
.end method

.method private c(Lcom/google/android/maps/driveabout/vector/t;)V
    .registers 8

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bx;->o:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bx;->p:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/t;->l()F

    move-result v0

    const/high16 v1, 0x4188

    cmpl-float v0, v0, v1

    if-lez v0, :cond_73

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/bx;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1c
    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_73

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/aU;

    new-instance v3, Lt/r;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/aU;->b()Lt/af;

    move-result-object v1

    invoke-virtual {v1}, Lt/af;->e()Lt/m;

    move-result-object v1

    invoke-direct {v3, v1}, Lt/r;-><init>(Lt/m;)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bx;->p:Ljava/util/Map;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/maps/driveabout/vector/bF;

    if-nez v1, :cond_48

    invoke-direct {p0, v3}, Lcom/google/android/maps/driveabout/vector/bx;->a(Lt/r;)Lcom/google/android/maps/driveabout/vector/bF;

    move-result-object v1

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/bx;->p:Ljava/util/Map;

    invoke-interface {v4, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_48
    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/bx;->j:Lr/h;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/aU;->b()Lt/af;

    move-result-object v0

    invoke-virtual {v3, v0}, Lr/h;->a(Lt/af;)Lr/f;

    move-result-object v3

    if-eqz v3, :cond_1c

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bx;->o:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/i;

    if-nez v0, :cond_6f

    new-instance v0, Lt/i;

    const/4 v4, 0x1

    new-array v4, v4, [Lt/h;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    invoke-direct {v0, v4}, Lt/i;-><init>([Lt/h;)V

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/bx;->o:Ljava/util/Map;

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1c

    :cond_6f
    invoke-virtual {v0, v3}, Lt/i;->a(Lt/h;)V

    goto :goto_1c

    :cond_73
    return-void
.end method

.method private d(Lcom/google/android/maps/driveabout/vector/t;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bx;->k:Lcom/google/android/maps/driveabout/vector/bw;

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/t;->l()F

    move-result v0

    const v1, 0x416e6666

    cmpl-float v0, v0, v1

    if-lez v0, :cond_37

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bx;->k:Lcom/google/android/maps/driveabout/vector/bw;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/bw;->c(Lcom/google/android/maps/driveabout/vector/t;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bx;->i:Lr/l;

    invoke-virtual {v1, v0}, Lr/l;->a(Ljava/util/Set;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bx;->k:Lcom/google/android/maps/driveabout/vector/bw;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/bw;->a(Lcom/google/android/maps/driveabout/vector/t;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_25
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/af;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bx;->j:Lr/h;

    invoke-virtual {v2, v0}, Lr/h;->a(Lt/af;)Lr/f;

    goto :goto_25

    :cond_37
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bx;->i:Lr/l;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lr/l;->a(Ljava/util/Set;)V

    goto :goto_4
.end method

.method private e(Lcom/google/android/maps/driveabout/vector/t;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bx;->k:Lcom/google/android/maps/driveabout/vector/bw;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/t;->l()F

    move-result v1

    const/high16 v2, 0x4188

    cmpl-float v1, v1, v2

    if-lez v1, :cond_16

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bx;->k:Lcom/google/android/maps/driveabout/vector/bw;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/bw;->d(Lcom/google/android/maps/driveabout/vector/t;)Lt/r;

    move-result-object v0

    :cond_16
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bx;->i:Lr/l;

    invoke-virtual {v1, v0}, Lr/l;->c(Lt/r;)V

    goto :goto_4
.end method

.method private q()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bx;->i:Lr/l;

    invoke-virtual {v0}, Lr/l;->b()Lt/q;

    move-result-object v0

    if-nez v0, :cond_18

    const/4 v0, 0x0

    :goto_9
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bx;->l:Lcom/google/android/maps/driveabout/vector/bz;

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Lt/u;->f()I

    move-result v0

    if-gez v0, :cond_1f

    const/4 v0, 0x1

    :goto_14
    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/vector/bz;->b(Z)V

    return-void

    :cond_18
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bx;->i:Lr/l;

    invoke-virtual {v1, v0}, Lr/l;->b(Lt/q;)Lt/u;

    move-result-object v0

    goto :goto_9

    :cond_1f
    const/4 v0, 0x0

    goto :goto_14
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/t;)I
    .registers 7

    const/4 v1, 0x2

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bx;->l:Lcom/google/android/maps/driveabout/vector/bz;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/bz;->h()Z

    move-result v2

    if-eqz v2, :cond_b

    move v0, v1

    :cond_b
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bx;->m:Ljava/util/Set;

    monitor-enter v2

    :try_start_e
    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/bx;->m:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_18

    monitor-exit v2

    :goto_17
    return v0

    :cond_18
    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/bx;->m:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_38

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr/e;

    invoke-virtual {v0}, Lr/e;->f()Z

    move-result v0

    if-nez v0, :cond_36

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bx;->g:Z

    :cond_36
    move v0, v1

    goto :goto_1e

    :cond_38
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bx;->m:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_48

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bx;->k:Lcom/google/android/maps/driveabout/vector/bw;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/bw;->b()V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/bx;->e()V

    :cond_48
    monitor-exit v2

    goto :goto_17

    :catchall_4a
    move-exception v0

    monitor-exit v2
    :try_end_4c
    .catchall {:try_start_e .. :try_end_4c} :catchall_4a

    throw v0
.end method

.method public a(Lt/at;Lcom/google/android/maps/driveabout/vector/bZ;Ljava/util/Set;)I
    .registers 9

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bx;->i:Lr/l;

    invoke-virtual {v0}, Lr/l;->f()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/bx;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_e
    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/aU;

    if-eqz v0, :cond_e

    new-instance v3, Lt/r;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/aU;->b()Lt/af;

    move-result-object v4

    invoke-virtual {v4}, Lt/af;->e()Lt/m;

    move-result-object v4

    invoke-direct {v3, v4}, Lt/r;-><init>(Lt/m;)V

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    if-eqz p1, :cond_3f

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/aU;->b()Lt/af;

    move-result-object v4

    invoke-virtual {v4}, Lt/af;->i()Lt/V;

    move-result-object v4

    invoke-virtual {p1, v4}, Lt/at;->b(Lt/W;)Z

    move-result v4

    if-eqz v4, :cond_e

    :cond_3f
    invoke-direct {p0, v3}, Lcom/google/android/maps/driveabout/vector/bx;->a(Lt/r;)Lcom/google/android/maps/driveabout/vector/bF;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/google/android/maps/driveabout/vector/aU;->a(Lcom/google/android/maps/driveabout/vector/bF;)V

    invoke-interface {v0, p2}, Lcom/google/android/maps/driveabout/vector/aU;->a(Lcom/google/android/maps/driveabout/vector/bZ;)Z

    goto :goto_e

    :cond_4a
    const/4 v0, 0x0

    return v0
.end method

.method public a(Lt/L;)Lt/y;
    .registers 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bx;->k:Lcom/google/android/maps/driveabout/vector/bw;

    if-nez v0, :cond_7

    move-object v0, v1

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bx;->k:Lcom/google/android/maps/driveabout/vector/bw;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bw;->c()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_11

    move-object v0, v1

    goto :goto_6

    :cond_11
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/af;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/bx;->j:Lr/h;

    invoke-virtual {v3, v0}, Lr/h;->a(Lt/af;)Lr/f;

    move-result-object v3

    if-eqz v3, :cond_15

    invoke-virtual {v3, p1}, Lr/f;->a(Lt/L;)Z

    move-result v3

    if-eqz v3, :cond_15

    check-cast v0, Lt/z;

    invoke-virtual {v0}, Lt/z;->a()Lt/y;

    move-result-object v0

    goto :goto_6

    :cond_36
    move-object v0, v1

    goto :goto_6
.end method

.method public a()V
    .registers 1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/bx;->e()V

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aT;)V
    .registers 4

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/google/android/maps/driveabout/vector/cI;->a(Lcom/google/android/maps/driveabout/vector/aT;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bx;->i:Lr/l;

    invoke-virtual {v0, v1}, Lr/l;->c(Lt/r;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bx;->i:Lr/l;

    invoke-virtual {v0, v1}, Lr/l;->a(Ljava/util/Set;)V

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/t;Lcom/google/android/maps/driveabout/vector/J;)V
    .registers 6

    invoke-interface {p3}, Lcom/google/android/maps/driveabout/vector/J;->c()Lcom/google/android/maps/driveabout/vector/cb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cb;->b()Lcom/google/android/maps/driveabout/vector/cc;

    move-result-object v0

    sget-object v1, Lcom/google/android/maps/driveabout/vector/cc;->d:Lcom/google/android/maps/driveabout/vector/cc;

    if-ne v0, v1, :cond_1a

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bx;->l:Lcom/google/android/maps/driveabout/vector/bz;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bz;->e()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bx;->l:Lcom/google/android/maps/driveabout/vector/bz;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/maps/driveabout/vector/bz;->a(Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/t;Lcom/google/android/maps/driveabout/vector/J;)V

    :cond_19
    :goto_19
    return-void

    :cond_1a
    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/t;->l()F

    move-result v0

    const v1, 0x416e6666

    cmpl-float v0, v0, v1

    if-lez v0, :cond_29

    invoke-super {p0, p1, p2, p3}, Lcom/google/android/maps/driveabout/vector/cI;->a(Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/t;Lcom/google/android/maps/driveabout/vector/J;)V

    goto :goto_19

    :cond_29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bx;->d:Z

    goto :goto_19
.end method

.method protected a(Lcom/google/android/maps/driveabout/vector/cz;)V
    .registers 3

    move-object v0, p1

    check-cast v0, Lcom/google/android/maps/driveabout/vector/bw;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bx;->k:Lcom/google/android/maps/driveabout/vector/bw;

    invoke-super {p0, p1}, Lcom/google/android/maps/driveabout/vector/cI;->a(Lcom/google/android/maps/driveabout/vector/cz;)V

    return-void
.end method

.method public a(Ljava/util/Set;Ljava/util/Map;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bx;->i:Lr/l;

    invoke-virtual {v0}, Lr/l;->e()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/u;

    invoke-virtual {v0}, Lt/u;->b()Lt/r;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/vector/bx;->a(Lt/r;)Lcom/google/android/maps/driveabout/vector/bF;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_22
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bx;->o:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public a(Lr/l;)V
    .registers 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bx;->f:Z

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bx;->g:Z

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/bx;->q()V

    invoke-virtual {p1}, Lr/l;->b()Lt/q;

    move-result-object v0

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Lt/q;->b()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lt/v;->a:Lcom/google/common/base/o;

    invoke-static {v0, v1}, LK/bF;->a(Ljava/lang/Iterable;Lcom/google/common/base/o;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, LK/bu;->a(Ljava/lang/Iterable;)LK/bu;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bx;->n:Ljava/util/Set;

    :goto_1e
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/bx;->e()V

    return-void

    :cond_22
    invoke-static {}, LK/bu;->f()LK/bu;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bx;->n:Ljava/util/Set;

    goto :goto_1e
.end method

.method public a(Lr/l;Lt/q;)V
    .registers 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bx;->f:Z

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bx;->g:Z

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/bx;->q()V

    invoke-direct {p0, p2}, Lcom/google/android/maps/driveabout/vector/bx;->a(Lt/q;)V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/bx;->e()V

    return-void
.end method

.method public a(Lt/af;Lr/f;)V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/bx;->e()V

    return-void
.end method

.method a(Ljava/util/List;)Z
    .registers 12

    const/4 v9, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bx;->g:Z

    if-eqz v0, :cond_f7

    iput-boolean v3, p0, Lcom/google/android/maps/driveabout/vector/bx;->g:Z

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bx;->l:Lcom/google/android/maps/driveabout/vector/bz;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bz;->e()Z

    move-result v0

    if-eqz v0, :cond_1d

    sget-object v0, Lcom/google/android/maps/driveabout/vector/cc;->d:Lcom/google/android/maps/driveabout/vector/cc;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/vector/bx;->a(Lcom/google/android/maps/driveabout/vector/cc;)Lcom/google/android/maps/driveabout/vector/cb;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1d
    invoke-static {}, LK/cw;->a()Ljava/util/HashSet;

    move-result-object v4

    invoke-static {}, LK/cw;->a()Ljava/util/HashSet;

    move-result-object v5

    invoke-static {}, LK/cw;->a()Ljava/util/HashSet;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bx;->i:Lr/l;

    invoke-virtual {v1}, Lr/l;->h()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bx;->m:Ljava/util/Set;

    monitor-enter v1

    :try_start_35
    iget-object v6, p0, Lcom/google/android/maps/driveabout/vector/bx;->m:Ljava/util/Set;

    invoke-interface {v0, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_35 .. :try_end_3b} :catchall_74

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3f
    :goto_3f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr/e;

    invoke-virtual {v0}, Lr/e;->d()Z

    move-result v1

    if-eqz v1, :cond_77

    sget-object v1, Lcom/google/android/maps/driveabout/vector/cc;->h:Lcom/google/android/maps/driveabout/vector/cc;

    new-array v7, v2, [Lcom/google/android/maps/driveabout/vector/cd;

    aput-object v0, v7, v3

    invoke-virtual {p0, v1, v7}, Lcom/google/android/maps/driveabout/vector/bx;->a(Lcom/google/android/maps/driveabout/vector/cc;[Lcom/google/android/maps/driveabout/vector/cd;)Lcom/google/android/maps/driveabout/vector/cb;

    move-result-object v1

    :goto_5b
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lr/e;->b()F

    move-result v1

    cmpl-float v1, v1, v9

    if-lez v1, :cond_a1

    invoke-virtual {v0}, Lr/e;->d()Z

    move-result v1

    if-nez v1, :cond_a1

    invoke-virtual {v0}, Lr/e;->g()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_3f

    :catchall_74
    move-exception v0

    :try_start_75
    monitor-exit v1
    :try_end_76
    .catchall {:try_start_75 .. :try_end_76} :catchall_74

    throw v0

    :cond_77
    invoke-virtual {v0}, Lr/e;->b()F

    move-result v1

    cmpg-float v1, v1, v9

    if-gez v1, :cond_90

    sget-object v1, Lcom/google/android/maps/driveabout/vector/cc;->f:Lcom/google/android/maps/driveabout/vector/cc;

    invoke-static {v0}, LK/bn;->a(Ljava/lang/Object;)LK/bn;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/maps/driveabout/vector/bx;->r:Lcom/google/android/maps/driveabout/vector/cd;

    invoke-static {v8}, LK/bn;->a(Ljava/lang/Object;)LK/bn;

    move-result-object v8

    invoke-virtual {p0, v1, v7, v8}, Lcom/google/android/maps/driveabout/vector/bx;->a(Lcom/google/android/maps/driveabout/vector/cc;Ljava/util/Collection;Ljava/util/Collection;)Lcom/google/android/maps/driveabout/vector/cb;

    move-result-object v1

    goto :goto_5b

    :cond_90
    sget-object v1, Lcom/google/android/maps/driveabout/vector/cc;->c:Lcom/google/android/maps/driveabout/vector/cc;

    invoke-static {v0}, LK/bn;->a(Ljava/lang/Object;)LK/bn;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/maps/driveabout/vector/bx;->r:Lcom/google/android/maps/driveabout/vector/cd;

    invoke-static {v8}, LK/bn;->a(Ljava/lang/Object;)LK/bn;

    move-result-object v8

    invoke-virtual {p0, v1, v7, v8}, Lcom/google/android/maps/driveabout/vector/bx;->a(Lcom/google/android/maps/driveabout/vector/cc;Ljava/util/Collection;Ljava/util/Collection;)Lcom/google/android/maps/driveabout/vector/cb;

    move-result-object v1

    goto :goto_5b

    :cond_a1
    invoke-virtual {v0}, Lr/e;->b()F

    move-result v1

    cmpg-float v1, v1, v9

    if-gez v1, :cond_3f

    invoke-virtual {v0}, Lr/e;->d()Z

    move-result v1

    if-nez v1, :cond_3f

    invoke-virtual {v0}, Lr/e;->g()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    sget-object v1, Lcom/google/android/maps/driveabout/vector/cc;->g:Lcom/google/android/maps/driveabout/vector/cc;

    new-array v7, v2, [Lcom/google/android/maps/driveabout/vector/cd;

    aput-object v0, v7, v3

    invoke-virtual {p0, v1, v7}, Lcom/google/android/maps/driveabout/vector/bx;->a(Lcom/google/android/maps/driveabout/vector/cc;[Lcom/google/android/maps/driveabout/vector/cd;)Lcom/google/android/maps/driveabout/vector/cb;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3f

    :cond_c5
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_dd

    sget-object v0, Lcom/google/android/maps/driveabout/vector/cc;->b:Lcom/google/android/maps/driveabout/vector/cc;

    new-array v1, v2, [Lcom/google/android/maps/driveabout/vector/cd;

    new-instance v6, Lcom/google/android/maps/driveabout/vector/bA;

    invoke-direct {v6, v4}, Lcom/google/android/maps/driveabout/vector/bA;-><init>(Ljava/util/Set;)V

    aput-object v6, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/google/android/maps/driveabout/vector/bx;->a(Lcom/google/android/maps/driveabout/vector/cc;[Lcom/google/android/maps/driveabout/vector/cd;)Lcom/google/android/maps/driveabout/vector/cb;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_dd
    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f5

    sget-object v0, Lcom/google/android/maps/driveabout/vector/cc;->e:Lcom/google/android/maps/driveabout/vector/cc;

    new-array v1, v2, [Lcom/google/android/maps/driveabout/vector/cd;

    new-instance v4, Lcom/google/android/maps/driveabout/vector/bA;

    invoke-direct {v4, v5}, Lcom/google/android/maps/driveabout/vector/bA;-><init>(Ljava/util/Set;)V

    aput-object v4, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/google/android/maps/driveabout/vector/bx;->a(Lcom/google/android/maps/driveabout/vector/cc;[Lcom/google/android/maps/driveabout/vector/cd;)Lcom/google/android/maps/driveabout/vector/cb;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_f5
    move v0, v2

    :goto_f6
    return v0

    :cond_f7
    move v0, v3

    goto :goto_f6
.end method

.method public a_(Lcom/google/android/maps/driveabout/vector/t;)Z
    .registers 5

    const/4 v0, 0x1

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/bx;->e(Lcom/google/android/maps/driveabout/vector/t;)V

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/bx;->d(Lcom/google/android/maps/driveabout/vector/t;)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bx;->o:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/t;->l()F

    move-result v1

    const v2, 0x416e6666

    cmpl-float v1, v1, v2

    if-lez v1, :cond_22

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bx;->f:Z

    invoke-super {p0, p1}, Lcom/google/android/maps/driveabout/vector/cI;->a_(Lcom/google/android/maps/driveabout/vector/t;)Z

    move-result v0

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/bx;->c(Lcom/google/android/maps/driveabout/vector/t;)V

    :goto_21
    return v0

    :cond_22
    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bx;->f:Z

    goto :goto_21
.end method

.method protected b(Lcom/google/android/maps/driveabout/vector/t;)Ljava/util/Set;
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bx;->k:Lcom/google/android/maps/driveabout/vector/bw;

    if-nez v0, :cond_9

    invoke-static {}, LK/bu;->f()LK/bu;

    move-result-object v0

    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bx;->k:Lcom/google/android/maps/driveabout/vector/bw;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/bw;->b(Lcom/google/android/maps/driveabout/vector/t;)Ljava/util/Set;

    move-result-object v0

    goto :goto_8
.end method

.method public b(Lr/l;)V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bx;->g:Z

    return-void
.end method

.method public b(Ljava/util/List;)Z
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/vector/bx;->a(Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method public c()Lcom/google/android/maps/driveabout/vector/u;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public e()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bx;->k:Lcom/google/android/maps/driveabout/vector/bw;

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bx;->k:Lcom/google/android/maps/driveabout/vector/bw;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bw;->a()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bx;->c:Lcom/google/android/maps/driveabout/vector/cm;

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/cm;->a(ZZ)V

    goto :goto_4
.end method

.method public x()Lcom/google/android/maps/driveabout/vector/b;
    .registers 1

    return-object p0
.end method
