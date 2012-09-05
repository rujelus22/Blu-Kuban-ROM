.class public Lcom/google/android/maps/driveabout/vector/ar;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/util/ArrayList;

.field private final b:Lt/af;

.field private final c:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lt/af;[Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/ar;->a:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/ar;->b:Lt/af;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/vector/ar;->c:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lt/ar;)V
    .registers 6

    const/4 v1, 0x0

    :goto_1
    invoke-interface {p1}, Lt/ar;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {p1}, Lt/ar;->b()Lt/l;

    move-result-object v0

    instance-of v2, v0, Lt/D;

    if-nez v2, :cond_10

    :cond_f
    return-void

    :cond_10
    check-cast v0, Lt/D;

    if-eqz v1, :cond_2b

    invoke-static {v1}, Lcom/google/android/maps/driveabout/vector/at;->a(Lcom/google/android/maps/driveabout/vector/at;)Lt/P;

    move-result-object v2

    invoke-virtual {v0}, Lt/D;->c()Lt/P;

    move-result-object v3

    invoke-virtual {v2, v3}, Lt/P;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/vector/at;->a(Lt/D;)V

    move-object v0, v1

    :goto_26
    invoke-interface {p1}, Lt/ar;->next()Ljava/lang/Object;

    move-object v1, v0

    goto :goto_1

    :cond_2b
    new-instance v1, Lcom/google/android/maps/driveabout/vector/at;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/ar;->c:[Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcom/google/android/maps/driveabout/vector/at;-><init>(Lt/D;[Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ar;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    goto :goto_26
.end method

.method public a(Lt/l;)V
    .registers 5

    instance-of v0, p1, Lt/D;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ar;->a:Ljava/util/ArrayList;

    new-instance v1, Lcom/google/android/maps/driveabout/vector/at;

    check-cast p1, Lt/D;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/ar;->c:[Ljava/lang/String;

    invoke-direct {v1, p1, v2}, Lcom/google/android/maps/driveabout/vector/at;-><init>(Lt/D;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    return-void
.end method

.method public a()[Lcom/google/android/maps/driveabout/vector/ap;
    .registers 19

    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/maps/driveabout/vector/ar;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v15

    new-instance v14, Lcom/google/android/maps/driveabout/vector/as;

    invoke-direct {v14}, Lcom/google/android/maps/driveabout/vector/as;-><init>()V

    invoke-static {}, LK/cw;->a()Ljava/util/HashSet;

    move-result-object v13

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v12

    new-instance v11, Lcom/google/android/maps/driveabout/vector/as;

    invoke-direct {v11}, Lcom/google/android/maps/driveabout/vector/as;-><init>()V

    invoke-static {}, LK/cw;->a()Ljava/util/HashSet;

    move-result-object v10

    const/4 v8, 0x0

    :goto_28
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_fd

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/google/android/maps/driveabout/vector/at;

    invoke-virtual {v7}, Lcom/google/android/maps/driveabout/vector/at;->c()Lt/m;

    move-result-object v1

    if-eqz v1, :cond_6d

    new-instance v3, Lcom/google/android/maps/driveabout/vector/as;

    invoke-direct {v3}, Lcom/google/android/maps/driveabout/vector/as;-><init>()V

    invoke-virtual {v7}, Lcom/google/android/maps/driveabout/vector/at;->a()Lt/P;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/google/android/maps/driveabout/vector/ap;->a(Lt/P;Lcom/google/android/maps/driveabout/vector/as;)Z

    new-instance v1, Lcom/google/android/maps/driveabout/vector/ap;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/maps/driveabout/vector/ar;->b:Lt/af;

    invoke-static {v7}, LK/bn;->a(Ljava/lang/Object;)LK/bn;

    move-result-object v4

    invoke-virtual {v7}, Lcom/google/android/maps/driveabout/vector/at;->b()Ljava/util/Set;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/maps/driveabout/vector/ap;-><init>(Lt/af;Lcom/google/android/maps/driveabout/vector/as;Ljava/util/List;Ljava/util/Set;Lcom/google/android/maps/driveabout/vector/aq;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v1, v8

    move-object v2, v10

    move-object v3, v11

    move-object v4, v12

    move-object v5, v13

    move-object v6, v14

    move-object v7, v15

    :goto_65
    move-object v8, v1

    move-object v10, v2

    move-object v11, v3

    move-object v12, v4

    move-object v13, v5

    move-object v14, v6

    move-object v15, v7

    goto :goto_28

    :cond_6d
    invoke-virtual {v7}, Lcom/google/android/maps/driveabout/vector/at;->e()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_c1

    new-instance v9, Lcom/google/android/maps/driveabout/vector/av;

    invoke-direct {v9, v7}, Lcom/google/android/maps/driveabout/vector/av;-><init>(Lcom/google/android/maps/driveabout/vector/at;)V

    if-eqz v8, :cond_bf

    invoke-virtual {v9, v8}, Lcom/google/android/maps/driveabout/vector/av;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_bf

    const/4 v1, 0x1

    :goto_82
    invoke-virtual {v7}, Lcom/google/android/maps/driveabout/vector/at;->a()Lt/P;

    move-result-object v2

    invoke-static {v2, v11}, Lcom/google/android/maps/driveabout/vector/ap;->a(Lt/P;Lcom/google/android/maps/driveabout/vector/as;)Z

    move-result v2

    if-eqz v2, :cond_8e

    if-eqz v1, :cond_148

    :cond_8e
    new-instance v1, Lcom/google/android/maps/driveabout/vector/ap;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/maps/driveabout/vector/ar;->b:Lt/af;

    const/4 v6, 0x0

    move-object v3, v11

    move-object v4, v12

    move-object v5, v10

    invoke-direct/range {v1 .. v6}, Lcom/google/android/maps/driveabout/vector/ap;-><init>(Lt/af;Lcom/google/android/maps/driveabout/vector/as;Ljava/util/List;Ljava/util/Set;Lcom/google/android/maps/driveabout/vector/aq;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v3

    new-instance v2, Lcom/google/android/maps/driveabout/vector/as;

    invoke-direct {v2}, Lcom/google/android/maps/driveabout/vector/as;-><init>()V

    invoke-static {}, LK/cw;->a()Ljava/util/HashSet;

    move-result-object v1

    :goto_ad
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7}, Lcom/google/android/maps/driveabout/vector/at;->b()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    move-object v4, v3

    move-object v5, v13

    move-object v6, v14

    move-object v7, v15

    move-object v3, v2

    move-object v2, v1

    move-object v1, v9

    goto :goto_65

    :cond_bf
    const/4 v1, 0x0

    goto :goto_82

    :cond_c1
    invoke-virtual {v7}, Lcom/google/android/maps/driveabout/vector/at;->a()Lt/P;

    move-result-object v1

    invoke-static {v1, v14}, Lcom/google/android/maps/driveabout/vector/ap;->a(Lt/P;Lcom/google/android/maps/driveabout/vector/as;)Z

    move-result v1

    if-nez v1, :cond_144

    new-instance v1, Lcom/google/android/maps/driveabout/vector/ap;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/maps/driveabout/vector/ar;->b:Lt/af;

    const/4 v6, 0x0

    move-object v3, v14

    move-object v4, v15

    move-object v5, v13

    invoke-direct/range {v1 .. v6}, Lcom/google/android/maps/driveabout/vector/ap;-><init>(Lt/af;Lcom/google/android/maps/driveabout/vector/as;Ljava/util/List;Ljava/util/Set;Lcom/google/android/maps/driveabout/vector/aq;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v3

    new-instance v2, Lcom/google/android/maps/driveabout/vector/as;

    invoke-direct {v2}, Lcom/google/android/maps/driveabout/vector/as;-><init>()V

    invoke-static {}, LK/cw;->a()Ljava/util/HashSet;

    move-result-object v1

    :goto_ea
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7}, Lcom/google/android/maps/driveabout/vector/at;->b()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    move-object v4, v12

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    move-object v2, v10

    move-object v3, v11

    move-object v1, v8

    goto/16 :goto_65

    :cond_fd
    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_115

    new-instance v1, Lcom/google/android/maps/driveabout/vector/ap;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/maps/driveabout/vector/ar;->b:Lt/af;

    const/4 v6, 0x0

    move-object v3, v14

    move-object v4, v15

    move-object v5, v13

    invoke-direct/range {v1 .. v6}, Lcom/google/android/maps/driveabout/vector/ap;-><init>(Lt/af;Lcom/google/android/maps/driveabout/vector/as;Ljava/util/List;Ljava/util/Set;Lcom/google/android/maps/driveabout/vector/aq;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_115
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_12d

    new-instance v1, Lcom/google/android/maps/driveabout/vector/ap;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/maps/driveabout/vector/ar;->b:Lt/af;

    const/4 v6, 0x0

    move-object v3, v11

    move-object v4, v12

    move-object v5, v10

    invoke-direct/range {v1 .. v6}, Lcom/google/android/maps/driveabout/vector/ap;-><init>(Lt/af;Lcom/google/android/maps/driveabout/vector/as;Ljava/util/List;Ljava/util/Set;Lcom/google/android/maps/driveabout/vector/aq;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12d
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_135

    const/4 v1, 0x0

    :goto_134
    return-object v1

    :cond_135
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/google/android/maps/driveabout/vector/ap;

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/maps/driveabout/vector/ap;

    goto :goto_134

    :cond_144
    move-object v1, v13

    move-object v2, v14

    move-object v3, v15

    goto :goto_ea

    :cond_148
    move-object v1, v10

    move-object v2, v11

    move-object v3, v12

    goto/16 :goto_ad
.end method
