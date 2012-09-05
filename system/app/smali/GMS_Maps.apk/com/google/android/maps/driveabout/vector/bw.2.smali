.class public Lcom/google/android/maps/driveabout/vector/bw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/driveabout/vector/cz;


# instance fields
.field private final a:Lcom/google/android/maps/driveabout/vector/cz;

.field private final b:Lr/b;

.field private final c:Lx/T;

.field private volatile d:Z

.field private e:Ljava/util/List;

.field private f:Ljava/util/List;

.field private g:Ljava/util/Set;

.field private h:Ljava/util/Set;

.field private i:Lt/af;

.field private j:Lt/r;

.field private k:Lt/y;

.field private final l:Lz/g;

.field private final m:Lr/l;


# direct methods
.method protected constructor <init>(Lcom/google/android/maps/driveabout/vector/cz;Lr/b;Lx/T;ILr/l;)V
    .registers 8

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bw;->d:Z

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/bw;->j:Lt/r;

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/bw;->k:Lt/y;

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/bw;->a:Lcom/google/android/maps/driveabout/vector/cz;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/vector/bw;->b:Lr/b;

    iput-object p3, p0, Lcom/google/android/maps/driveabout/vector/bw;->c:Lx/T;

    new-instance v0, Lz/g;

    invoke-direct {v0, p4}, Lz/g;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bw;->l:Lz/g;

    iput-object p5, p0, Lcom/google/android/maps/driveabout/vector/bw;->m:Lr/l;

    return-void
.end method

.method private e(Lcom/google/android/maps/driveabout/vector/t;)V
    .registers 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/maps/driveabout/vector/bw;->a:Lcom/google/android/maps/driveabout/vector/cz;

    move-object/from16 v0, p1

    invoke-interface {v1, v0}, Lcom/google/android/maps/driveabout/vector/cz;->a(Lcom/google/android/maps/driveabout/vector/t;)Ljava/util/List;

    move-result-object v7

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/maps/driveabout/vector/bw;->d:Z

    if-nez v1, :cond_1d

    if-eqz v7, :cond_1d

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/maps/driveabout/vector/bw;->e:Ljava/util/List;

    invoke-virtual {v7, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    :goto_1c
    return-void

    :cond_1d
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/google/android/maps/driveabout/vector/bw;->d:Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/maps/driveabout/vector/bw;->m:Lr/l;

    invoke-virtual {v1}, Lr/l;->b()Lt/q;

    move-result-object v8

    if-eqz v8, :cond_fd

    invoke-virtual {v8}, Lt/q;->a()Lt/r;

    move-result-object v1

    move-object v3, v1

    :goto_31
    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v9

    invoke-static {}, LK/cw;->a()Ljava/util/HashSet;

    move-result-object v10

    invoke-static {}, LK/cw;->a()Ljava/util/HashSet;

    move-result-object v11

    const/4 v4, 0x0

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_42
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_124

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lt/af;

    if-nez v4, :cond_60

    invoke-virtual {v2}, Lt/af;->i()Lt/V;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/maps/driveabout/vector/t;->c()Lt/L;

    move-result-object v5

    invoke-virtual {v1, v5}, Lt/V;->a(Lt/L;)Z

    move-result v1

    if-eqz v1, :cond_60

    move-object v4, v2

    :cond_60
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/maps/driveabout/vector/bw;->l:Lz/g;

    invoke-virtual {v1, v2}, Lz/g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    if-nez v1, :cond_7f

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/maps/driveabout/vector/bw;->b:Lr/b;

    invoke-interface {v1, v2}, Lr/b;->a(Lt/af;)Ljava/util/Collection;

    move-result-object v1

    sget-object v5, Lr/b;->a:Ljava/util/Collection;

    if-eq v1, v5, :cond_7f

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/maps/driveabout/vector/bw;->l:Lz/g;

    invoke-virtual {v5, v2, v1}, Lz/g;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_7f
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_83
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr/a;

    invoke-virtual {v1}, Lr/a;->a()Lt/r;

    move-result-object v5

    invoke-interface {v11, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/maps/driveabout/vector/bw;->m:Lr/l;

    invoke-virtual {v1}, Lr/a;->a()Lt/r;

    move-result-object v6

    invoke-virtual {v5, v6}, Lr/l;->a(Lt/r;)Lt/y;

    move-result-object v5

    if-eqz v5, :cond_ac

    new-instance v6, Lt/z;

    invoke-direct {v6, v2, v5}, Lt/z;-><init>(Lt/af;Lt/y;)V

    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_ac
    monitor-enter p0

    :try_start_ad
    invoke-virtual {v1}, Lr/a;->a()Lt/r;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/maps/driveabout/vector/bw;->j:Lt/r;

    invoke-virtual {v6, v14}, Lt/r;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c7

    new-instance v6, Lt/z;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/maps/driveabout/vector/bw;->k:Lt/y;

    invoke-direct {v6, v2, v14}, Lt/z;-><init>(Lt/af;Lt/y;)V

    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c7
    monitor-exit p0
    :try_end_c8
    .catchall {:try_start_ad .. :try_end_c8} :catchall_101

    if-eqz v5, :cond_83

    invoke-virtual {v1}, Lr/a;->a()Lt/r;

    move-result-object v1

    invoke-virtual {v1, v3}, Lt/r;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_83

    invoke-virtual {v8, v5}, Lt/q;->b(Lt/y;)I

    move-result v14

    const/4 v1, -0x1

    if-eq v14, v1, :cond_83

    invoke-virtual {v8}, Lt/q;->b()Ljava/util/List;

    move-result-object v15

    add-int/lit8 v1, v14, -0x1

    const/4 v5, 0x0

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v5, v14, 0x1

    add-int/lit8 v5, v5, 0x1

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v16

    move v6, v1

    :goto_f3
    move/from16 v0, v16

    if-ge v6, v0, :cond_83

    if-ne v6, v14, :cond_104

    :goto_f9
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_f3

    :cond_fd
    const/4 v1, 0x0

    move-object v3, v1

    goto/16 :goto_31

    :catchall_101
    move-exception v1

    :try_start_102
    monitor-exit p0
    :try_end_103
    .catchall {:try_start_102 .. :try_end_103} :catchall_101

    throw v1

    :cond_104
    new-instance v5, Lt/z;

    invoke-interface {v15, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lt/u;

    invoke-virtual {v1}, Lt/u;->a()Lt/y;

    move-result-object v1

    invoke-direct {v5, v2, v1}, Lt/z;-><init>(Lt/af;Lt/y;)V

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/maps/driveabout/vector/t;->b()Lt/L;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v1}, Lcom/google/android/maps/driveabout/vector/bw;->a(Lt/af;Lt/L;)Lt/af;

    move-result-object v1

    if-nez v1, :cond_120

    move-object v1, v5

    :cond_120
    invoke-interface {v10, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_f9

    :cond_124
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/maps/driveabout/vector/bw;->i:Lt/af;

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/google/android/maps/driveabout/vector/bw;->e:Ljava/util/List;

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/google/android/maps/driveabout/vector/bw;->f:Ljava/util/List;

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/google/android/maps/driveabout/vector/bw;->g:Ljava/util/Set;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/google/android/maps/driveabout/vector/bw;->h:Ljava/util/Set;

    goto/16 :goto_1c
.end method


# virtual methods
.method public a(Lt/L;)F
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bw;->a:Lcom/google/android/maps/driveabout/vector/cz;

    invoke-interface {v0, p1}, Lcom/google/android/maps/driveabout/vector/cz;->a(Lt/L;)F

    move-result v0

    return v0
.end method

.method public a(ILt/L;)Ljava/util/List;
    .registers 4

    invoke-static {}, LK/bn;->f()LK/bn;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/t;)Ljava/util/List;
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/bw;->e(Lcom/google/android/maps/driveabout/vector/t;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bw;->f:Ljava/util/List;

    return-object v0
.end method

.method public a(Lt/af;Lt/L;)Lt/af;
    .registers 4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bw;->a:Lcom/google/android/maps/driveabout/vector/cz;

    invoke-interface {v0, p1, p2}, Lcom/google/android/maps/driveabout/vector/cz;->a(Lt/af;Lt/L;)Lt/af;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bw;->d:Z

    return-void
.end method

.method public declared-synchronized a(Lt/r;Lt/y;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/bw;->j:Lt/r;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/vector/bw;->k:Lt/y;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/bw;->a()V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-void

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Lcom/google/android/maps/driveabout/vector/t;)Ljava/util/Set;
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/bw;->e(Lcom/google/android/maps/driveabout/vector/t;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bw;->g:Ljava/util/Set;

    return-object v0
.end method

.method public declared-synchronized b()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bw;->j:Lt/r;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bw;->k:Lt/y;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/bw;->a()V
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_c

    monitor-exit p0

    return-void

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bw;->f:Ljava/util/List;

    return-object v0
.end method

.method public c(Lcom/google/android/maps/driveabout/vector/t;)Ljava/util/Set;
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/bw;->e(Lcom/google/android/maps/driveabout/vector/t;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bw;->h:Ljava/util/Set;

    return-object v0
.end method

.method public d(Lcom/google/android/maps/driveabout/vector/t;)Lt/r;
    .registers 4

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/bw;->e(Lcom/google/android/maps/driveabout/vector/t;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bw;->i:Lt/af;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bw;->l:Lz/g;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bw;->i:Lt/af;

    invoke-virtual {v0, v1}, Lz/g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_1c

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/t;->c()Lt/L;

    move-result-object v1

    invoke-static {v0, v1}, Lr/a;->a(Ljava/util/Collection;Lt/L;)Lt/r;

    move-result-object v0

    :goto_1b
    return-object v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method
