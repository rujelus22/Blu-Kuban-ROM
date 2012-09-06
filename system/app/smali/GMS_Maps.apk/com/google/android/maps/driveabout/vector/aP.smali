.class public Lcom/google/android/maps/driveabout/vector/ap;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/util/ArrayList;

.field private final b:Ln/am;

.field private final c:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ln/am;[Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 469
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 465
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/ap;->a:Ljava/util/ArrayList;

    .line 470
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/ap;->b:Ln/am;

    .line 471
    iput-object p2, p0, Lcom/google/android/maps/driveabout/vector/ap;->c:[Ljava/lang/String;

    .line 472
    return-void
.end method


# virtual methods
.method public a(Ln/aI;)V
    .registers 6
    .parameter

    .prologue
    .line 479
    const/4 v1, 0x0

    .line 484
    :goto_1
    invoke-interface {p1}, Ln/aI;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 485
    invoke-interface {p1}, Ln/aI;->b()Ln/l;

    move-result-object v0

    .line 486
    instance-of v2, v0, Ln/H;

    if-nez v2, :cond_10

    .line 500
    :cond_f
    return-void

    .line 489
    :cond_10
    check-cast v0, Ln/H;

    .line 490
    if-eqz v1, :cond_2b

    invoke-static {v1}, Lcom/google/android/maps/driveabout/vector/ar;->a(Lcom/google/android/maps/driveabout/vector/ar;)Ln/U;

    move-result-object v2

    invoke-virtual {v0}, Ln/H;->b()Ln/U;

    move-result-object v3

    invoke-virtual {v2, v3}, Ln/U;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 492
    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/vector/ar;->a(Ln/H;)V

    move-object v0, v1

    .line 498
    :goto_26
    invoke-interface {p1}, Ln/aI;->next()Ljava/lang/Object;

    move-object v1, v0

    .line 499
    goto :goto_1

    .line 495
    :cond_2b
    new-instance v1, Lcom/google/android/maps/driveabout/vector/ar;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/ap;->c:[Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcom/google/android/maps/driveabout/vector/ar;-><init>(Ln/H;[Ljava/lang/String;)V

    .line 496
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ap;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    goto :goto_26
.end method

.method public a(Ln/l;)V
    .registers 5
    .parameter

    .prologue
    .line 506
    instance-of v0, p1, Ln/H;

    if-eqz v0, :cond_12

    .line 507
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ap;->a:Ljava/util/ArrayList;

    new-instance v1, Lcom/google/android/maps/driveabout/vector/ar;

    check-cast p1, Ln/H;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/ap;->c:[Ljava/lang/String;

    invoke-direct {v1, p1, v2}, Lcom/google/android/maps/driveabout/vector/ar;-><init>(Ln/H;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 509
    :cond_12
    return-void
.end method

.method public a(I)[Lcom/google/android/maps/driveabout/vector/an;
    .registers 21
    .parameter

    .prologue
    .line 516
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 518
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/maps/driveabout/vector/ap;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .line 519
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v14

    .line 520
    new-instance v17, Lcom/google/android/maps/driveabout/vector/aq;

    invoke-direct/range {v17 .. v17}, Lcom/google/android/maps/driveabout/vector/aq;-><init>()V

    .line 521
    invoke-static {}, Lcom/google/common/collect/dm;->a()Ljava/util/HashSet;

    move-result-object v13

    .line 522
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v12

    .line 523
    new-instance v18, Lcom/google/android/maps/driveabout/vector/aq;

    invoke-direct/range {v18 .. v18}, Lcom/google/android/maps/driveabout/vector/aq;-><init>()V

    .line 524
    invoke-static {}, Lcom/google/common/collect/dm;->a()Ljava/util/HashSet;

    move-result-object v11

    .line 526
    const/4 v9, 0x0

    .line 543
    :goto_28
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_109

    .line 544
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/google/android/maps/driveabout/vector/ar;

    .line 546
    invoke-virtual {v8}, Lcom/google/android/maps/driveabout/vector/ar;->c()Ln/m;

    move-result-object v1

    if-eqz v1, :cond_69

    .line 547
    new-instance v3, Lcom/google/android/maps/driveabout/vector/aq;

    invoke-direct {v3}, Lcom/google/android/maps/driveabout/vector/aq;-><init>()V

    .line 548
    invoke-virtual {v8}, Lcom/google/android/maps/driveabout/vector/ar;->a()Ln/U;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/google/android/maps/driveabout/vector/an;->a(Ln/U;Lcom/google/android/maps/driveabout/vector/aq;)Z

    .line 549
    new-instance v1, Lcom/google/android/maps/driveabout/vector/an;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/maps/driveabout/vector/ap;->b:Ln/am;

    invoke-static {v8}, Lcom/google/common/collect/ImmutableList;->a(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    invoke-virtual {v8}, Lcom/google/android/maps/driveabout/vector/ar;->b()Ljava/util/Set;

    move-result-object v5

    const/4 v7, 0x0

    move/from16 v6, p1

    invoke-direct/range {v1 .. v7}, Lcom/google/android/maps/driveabout/vector/an;-><init>(Ln/am;Lcom/google/android/maps/driveabout/vector/aq;Ljava/util/List;Ljava/util/Set;ILcom/google/android/maps/driveabout/vector/ao;)V

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v1, v9

    move-object v2, v11

    move-object v3, v12

    move-object v4, v13

    move-object v5, v14

    :goto_63
    move-object v9, v1

    move-object v11, v2

    move-object v12, v3

    move-object v13, v4

    move-object v14, v5

    .line 592
    goto :goto_28

    .line 559
    :cond_69
    invoke-virtual {v8}, Lcom/google/android/maps/driveabout/vector/ar;->e()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_c5

    .line 560
    new-instance v10, Lcom/google/android/maps/driveabout/vector/at;

    invoke-direct {v10, v8}, Lcom/google/android/maps/driveabout/vector/at;-><init>(Lcom/google/android/maps/driveabout/vector/ar;)V

    .line 563
    if-eqz v9, :cond_c3

    invoke-virtual {v10, v9}, Lcom/google/android/maps/driveabout/vector/at;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c3

    const/4 v1, 0x1

    .line 566
    :goto_7e
    invoke-virtual {v8}, Lcom/google/android/maps/driveabout/vector/ar;->a()Ln/U;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-static {v2, v0}, Lcom/google/android/maps/driveabout/vector/an;->a(Ln/U;Lcom/google/android/maps/driveabout/vector/aq;)Z

    move-result v2

    if-eqz v2, :cond_8c

    if-eqz v1, :cond_153

    .line 570
    :cond_8c
    new-instance v1, Lcom/google/android/maps/driveabout/vector/an;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/maps/driveabout/vector/ap;->b:Ln/am;

    const/4 v7, 0x0

    move-object/from16 v3, v18

    move-object v4, v12

    move-object v5, v11

    move/from16 v6, p1

    invoke-direct/range {v1 .. v7}, Lcom/google/android/maps/driveabout/vector/an;-><init>(Ln/am;Lcom/google/android/maps/driveabout/vector/aq;Ljava/util/List;Ljava/util/Set;ILcom/google/android/maps/driveabout/vector/ao;)V

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 572
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v2

    .line 573
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/maps/driveabout/vector/aq;->a()V

    .line 574
    invoke-virtual {v8}, Lcom/google/android/maps/driveabout/vector/ar;->a()Ln/U;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/vector/an;->a(Ln/U;Lcom/google/android/maps/driveabout/vector/aq;)Z

    .line 575
    invoke-static {}, Lcom/google/common/collect/dm;->a()Ljava/util/HashSet;

    move-result-object v1

    .line 577
    :goto_b3
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 578
    invoke-virtual {v8}, Lcom/google/android/maps/driveabout/vector/ar;->b()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    move-object v3, v2

    move-object v4, v13

    move-object v5, v14

    move-object v2, v1

    move-object v1, v10

    .line 580
    goto :goto_63

    .line 563
    :cond_c3
    const/4 v1, 0x0

    goto :goto_7e

    .line 581
    :cond_c5
    invoke-virtual {v8}, Lcom/google/android/maps/driveabout/vector/ar;->a()Ln/U;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/vector/an;->a(Ln/U;Lcom/google/android/maps/driveabout/vector/aq;)Z

    move-result v1

    if-nez v1, :cond_150

    .line 582
    new-instance v1, Lcom/google/android/maps/driveabout/vector/an;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/maps/driveabout/vector/ap;->b:Ln/am;

    const/4 v7, 0x0

    move-object/from16 v3, v17

    move-object v4, v14

    move-object v5, v13

    move/from16 v6, p1

    invoke-direct/range {v1 .. v7}, Lcom/google/android/maps/driveabout/vector/an;-><init>(Ln/am;Lcom/google/android/maps/driveabout/vector/aq;Ljava/util/List;Ljava/util/Set;ILcom/google/android/maps/driveabout/vector/ao;)V

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 584
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v2

    .line 585
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/maps/driveabout/vector/aq;->a()V

    .line 586
    invoke-virtual {v8}, Lcom/google/android/maps/driveabout/vector/ar;->a()Ln/U;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/vector/an;->a(Ln/U;Lcom/google/android/maps/driveabout/vector/aq;)Z

    .line 587
    invoke-static {}, Lcom/google/common/collect/dm;->a()Ljava/util/HashSet;

    move-result-object v1

    .line 589
    :goto_f8
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 590
    invoke-virtual {v8}, Lcom/google/android/maps/driveabout/vector/ar;->b()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    move-object v3, v12

    move-object v4, v1

    move-object v5, v2

    move-object v2, v11

    move-object v1, v9

    goto/16 :goto_63

    .line 593
    :cond_109
    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_122

    .line 594
    new-instance v1, Lcom/google/android/maps/driveabout/vector/an;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/maps/driveabout/vector/ap;->b:Ln/am;

    const/4 v7, 0x0

    move-object/from16 v3, v17

    move-object v4, v14

    move-object v5, v13

    move/from16 v6, p1

    invoke-direct/range {v1 .. v7}, Lcom/google/android/maps/driveabout/vector/an;-><init>(Ln/am;Lcom/google/android/maps/driveabout/vector/aq;Ljava/util/List;Ljava/util/Set;ILcom/google/android/maps/driveabout/vector/ao;)V

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 596
    :cond_122
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_13b

    .line 597
    new-instance v1, Lcom/google/android/maps/driveabout/vector/an;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/maps/driveabout/vector/ap;->b:Ln/am;

    const/4 v7, 0x0

    move-object/from16 v3, v18

    move-object v4, v12

    move-object v5, v11

    move/from16 v6, p1

    invoke-direct/range {v1 .. v7}, Lcom/google/android/maps/driveabout/vector/an;-><init>(Ln/am;Lcom/google/android/maps/driveabout/vector/aq;Ljava/util/List;Ljava/util/Set;ILcom/google/android/maps/driveabout/vector/ao;)V

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 600
    :cond_13b
    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_143

    .line 601
    const/4 v1, 0x0

    .line 603
    :goto_142
    return-object v1

    :cond_143
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/google/android/maps/driveabout/vector/an;

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/maps/driveabout/vector/an;

    goto :goto_142

    :cond_150
    move-object v1, v13

    move-object v2, v14

    goto :goto_f8

    :cond_153
    move-object v1, v11

    move-object v2, v12

    goto/16 :goto_b3
.end method
