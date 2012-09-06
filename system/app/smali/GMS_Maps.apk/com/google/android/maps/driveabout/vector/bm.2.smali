.class public Lcom/google/android/maps/driveabout/vector/bM;
.super Lcom/google/android/maps/driveabout/vector/db;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/maps/driveabout/vector/b;
.implements Ll/f;
.implements Ll/p;
.implements Ll/s;


# instance fields
.field private volatile d:Z

.field private volatile e:Z

.field private f:Lr/Q;

.field private final g:Ll/q;

.field private final h:Ll/n;

.field private i:Lcom/google/android/maps/driveabout/vector/bL;

.field private final j:Lcom/google/android/maps/driveabout/vector/bO;

.field private final k:Ljava/util/Set;

.field private volatile l:Ljava/util/Set;

.field private final m:Ljava/util/Map;

.field private final n:Ljava/util/Map;

.field private o:Ljava/util/List;

.field private final p:Lcom/google/android/maps/driveabout/vector/cx;


# direct methods
.method constructor <init>(Lw/e;Lcom/google/android/maps/driveabout/vector/da;IIIIILandroid/content/Context;Ll/q;)V
    .registers 30
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 314
    sget-object v5, Lcom/google/android/maps/driveabout/vector/dg;->n:Lcom/google/android/maps/driveabout/vector/dg;

    new-instance v7, Lcom/google/android/maps/driveabout/vector/bQ;

    move-object/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, p8

    move-object/from16 v3, p9

    invoke-direct {v7, v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/vector/bQ;-><init>(Lcom/google/android/maps/driveabout/vector/da;ILandroid/content/Context;Ll/q;)V

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

    invoke-direct/range {v4 .. v19}, Lcom/google/android/maps/driveabout/vector/db;-><init>(Lcom/google/android/maps/driveabout/vector/dg;Lw/e;Lcom/google/android/maps/driveabout/vector/da;IIIIIIZZZZZZ)V

    .line 73
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/google/android/maps/driveabout/vector/bM;->d:Z

    .line 75
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/google/android/maps/driveabout/vector/bM;->e:Z

    .line 200
    invoke-static {}, Lcom/google/common/collect/dm;->a()Ljava/util/HashSet;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/maps/driveabout/vector/bM;->k:Ljava/util/Set;

    .line 206
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->f()Lcom/google/common/collect/ImmutableSet;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/maps/driveabout/vector/bM;->l:Ljava/util/Set;

    .line 212
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/maps/driveabout/vector/bM;->m:Ljava/util/Map;

    .line 218
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/maps/driveabout/vector/bM;->n:Ljava/util/Map;

    .line 223
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/maps/driveabout/vector/bM;->o:Ljava/util/List;

    .line 290
    new-instance v4, Lcom/google/android/maps/driveabout/vector/bN;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/google/android/maps/driveabout/vector/bN;-><init>(Lcom/google/android/maps/driveabout/vector/bM;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/maps/driveabout/vector/bM;->p:Lcom/google/android/maps/driveabout/vector/cx;

    .line 323
    invoke-static {}, Lr/Q;->b()Lr/Q;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/maps/driveabout/vector/bM;->f:Lr/Q;

    .line 324
    move-object/from16 v0, p9

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/maps/driveabout/vector/bM;->g:Ll/q;

    .line 325
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/maps/driveabout/vector/bM;->g:Ll/q;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Ll/q;->a(Ll/s;)V

    .line 326
    new-instance v4, Ll/n;

    invoke-direct {v4}, Ll/n;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/maps/driveabout/vector/bM;->h:Ll/n;

    .line 327
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/maps/driveabout/vector/bM;->h:Ll/n;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Ll/n;->a(Ll/p;)V

    .line 328
    new-instance v4, Lcom/google/android/maps/driveabout/vector/bO;

    const v5, 0x1d4c0

    const/16 v6, 0x12c

    invoke-direct {v4, v5, v6}, Lcom/google/android/maps/driveabout/vector/bO;-><init>(II)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/maps/driveabout/vector/bM;->j:Lcom/google/android/maps/driveabout/vector/bO;

    .line 330
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/maps/driveabout/vector/bM;->j:Lcom/google/android/maps/driveabout/vector/bO;

    const v5, -0x7fafafb0

    invoke-virtual {v4, v5}, Lcom/google/android/maps/driveabout/vector/bO;->b(I)V

    .line 331
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/maps/driveabout/vector/bM;->g:Ll/q;

    invoke-virtual {v4}, Ll/q;->j()Ll/e;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-interface {v4, v0}, Ll/e;->a(Ll/f;)V

    .line 332
    return-void
.end method

.method private a(Ln/p;)Lcom/google/android/maps/driveabout/vector/bY;
    .registers 3
    .parameter

    .prologue
    .line 749
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bM;->c:Lcom/google/android/maps/driveabout/vector/bY;

    invoke-static {v0, p1}, Lcom/google/android/maps/driveabout/vector/bW;->a(Lcom/google/android/maps/driveabout/vector/bY;Ljava/lang/Object;)Lcom/google/android/maps/driveabout/vector/bW;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/vector/bM;)Ljava/util/Set;
    .registers 2
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bM;->l:Ljava/util/Set;

    return-object v0
.end method

.method private a(Ln/w;)V
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 785
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bM;->i:Lcom/google/android/maps/driveabout/vector/bL;

    if-nez v0, :cond_6

    .line 849
    :cond_5
    :goto_5
    return-void

    .line 790
    :cond_6
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bM;->g:Ll/q;

    invoke-virtual {p1}, Ln/w;->a()Ln/p;

    move-result-object v1

    invoke-virtual {v0, v1}, Ll/q;->a(Ln/p;)Ln/B;

    move-result-object v0

    .line 791
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bM;->g:Ll/q;

    invoke-virtual {p1}, Ln/w;->a()Ln/p;

    move-result-object v2

    invoke-virtual {v1, v2}, Ll/q;->c(Ln/p;)Ln/B;

    move-result-object v1

    .line 793
    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    .line 799
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bM;->g:Ll/q;

    invoke-virtual {v2, v1, v0}, Ll/q;->b(Ln/B;Ln/B;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 804
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bM;->i:Lcom/google/android/maps/driveabout/vector/bL;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/bL;->c()V

    .line 808
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bM;->g:Ll/q;

    invoke-virtual {v2, v1, v0}, Ll/q;->a(Ln/B;Ln/B;)V

    .line 815
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bM;->g:Ll/q;

    invoke-virtual {v0}, Ln/B;->a()Ln/p;

    move-result-object v0

    invoke-virtual {v2, v0, v5, v5, v5}, Ll/q;->a(Ln/p;ZZZ)Ll/k;

    move-result-object v2

    .line 818
    const/4 v0, 0x0

    .line 819
    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/bM;->g:Ll/q;

    invoke-virtual {v1}, Ln/B;->a()Ln/p;

    move-result-object v4

    invoke-virtual {v3, v4, v5, v5, v0}, Ll/q;->a(Ln/p;ZZZ)Ll/k;

    move-result-object v3

    .line 821
    if-eqz v2, :cond_5

    if-eqz v3, :cond_5

    .line 825
    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/bM;->k:Ljava/util/Set;

    monitor-enter v4

    .line 827
    :try_start_4c
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bM;->k:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_52
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_65

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll/k;

    .line 828
    invoke-virtual {v0}, Ll/k;->e()V

    goto :goto_52

    .line 846
    :catchall_62
    move-exception v0

    monitor-exit v4
    :try_end_64
    .catchall {:try_start_4c .. :try_end_64} :catchall_62

    throw v0

    .line 835
    :cond_65
    :try_start_65
    invoke-virtual {v2}, Ll/k;->b()F

    move-result v0

    invoke-virtual {v3}, Ll/k;->b()F

    move-result v5

    cmpl-float v0, v0, v5

    if-lez v0, :cond_95

    .line 836
    const/4 v0, 0x5

    invoke-virtual {v2, v0}, Ll/k;->a(I)V

    .line 837
    const/16 v0, 0x18

    invoke-virtual {v3, v0}, Ll/k;->a(I)V

    .line 843
    :goto_7a
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bM;->k:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 844
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bM;->k:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 845
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bM;->k:Ljava/util/Set;

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 846
    monitor-exit v4
    :try_end_8a
    .catchall {:try_start_65 .. :try_end_8a} :catchall_62

    .line 848
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bM;->i:Lcom/google/android/maps/driveabout/vector/bL;

    invoke-virtual {p1}, Ln/w;->a()Ln/p;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/google/android/maps/driveabout/vector/bL;->a(Ln/p;Ln/B;)V

    goto/16 :goto_5

    .line 839
    :cond_95
    const/16 v0, 0x14

    :try_start_97
    invoke-virtual {v2, v0}, Ll/k;->a(I)V

    .line 840
    const/16 v0, 0xa

    invoke-virtual {v3, v0}, Ll/k;->a(I)V
    :try_end_9f
    .catchall {:try_start_97 .. :try_end_9f} :catchall_62

    goto :goto_7a
.end method

.method private c(Lcom/google/android/maps/driveabout/vector/k;)V
    .registers 8
    .parameter

    .prologue
    .line 403
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bM;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 404
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bM;->n:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 410
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/k;->m()F

    move-result v0

    const/high16 v1, 0x4188

    cmpl-float v0, v0, v1

    if-lez v0, :cond_76

    .line 413
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/bM;->n()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1c
    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_76

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/aV;

    .line 414
    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/aV;->b()Ln/am;

    move-result-object v1

    sget-object v3, Ln/aq;->c:Ln/aq;

    invoke-virtual {v1, v3}, Ln/am;->a(Ln/aq;)Ln/ao;

    move-result-object v1

    check-cast v1, Ln/C;

    .line 415
    invoke-virtual {v1}, Ln/C;->b()Ln/p;

    move-result-object v3

    .line 416
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bM;->n:Ljava/util/Map;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/maps/driveabout/vector/bY;

    .line 417
    if-nez v1, :cond_4b

    .line 418
    invoke-direct {p0, v3}, Lcom/google/android/maps/driveabout/vector/bM;->a(Ln/p;)Lcom/google/android/maps/driveabout/vector/bY;

    move-result-object v1

    .line 419
    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/bM;->n:Ljava/util/Map;

    invoke-interface {v4, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    :cond_4b
    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/bM;->h:Ll/n;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/aV;->b()Ln/am;

    move-result-object v0

    invoke-virtual {v3, v0}, Ll/n;->a(Ln/am;)Ll/l;

    move-result-object v3

    .line 422
    if-eqz v3, :cond_1c

    .line 423
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bM;->m:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/i;

    .line 424
    if-nez v0, :cond_72

    .line 425
    new-instance v0, Ln/i;

    const/4 v4, 0x1

    new-array v4, v4, [Ln/h;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    invoke-direct {v0, v4}, Ln/i;-><init>([Ln/h;)V

    .line 426
    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/bM;->m:Ljava/util/Map;

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1c

    .line 428
    :cond_72
    invoke-virtual {v0, v3}, Ln/i;->a(Ln/h;)V

    goto :goto_1c

    .line 433
    :cond_76
    return-void
.end method

.method private d(Lcom/google/android/maps/driveabout/vector/k;)V
    .registers 5
    .parameter

    .prologue
    .line 436
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bM;->i:Lcom/google/android/maps/driveabout/vector/bL;

    if-nez v0, :cond_5

    .line 451
    :cond_4
    :goto_4
    return-void

    .line 439
    :cond_5
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/k;->m()F

    move-result v0

    const v1, 0x416e6666

    cmpl-float v0, v0, v1

    if-lez v0, :cond_37

    .line 440
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bM;->i:Lcom/google/android/maps/driveabout/vector/bL;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/bL;->c(Lcom/google/android/maps/driveabout/vector/k;)Ljava/util/Set;

    move-result-object v0

    .line 441
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bM;->g:Ll/q;

    invoke-virtual {v1, v0}, Ll/q;->a(Ljava/util/Set;)V

    .line 444
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bM;->i:Lcom/google/android/maps/driveabout/vector/bL;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/bL;->a(Lcom/google/android/maps/driveabout/vector/k;)Ljava/util/List;

    move-result-object v0

    .line 445
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_25
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/am;

    .line 446
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bM;->h:Ll/n;

    invoke-virtual {v2, v0}, Ll/n;->a(Ln/am;)Ll/l;

    goto :goto_25

    .line 449
    :cond_37
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bM;->g:Ll/q;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ll/q;->a(Ljava/util/Set;)V

    goto :goto_4
.end method

.method private e(Lcom/google/android/maps/driveabout/vector/k;)V
    .registers 5
    .parameter

    .prologue
    .line 457
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bM;->i:Lcom/google/android/maps/driveabout/vector/bL;

    if-nez v0, :cond_5

    .line 483
    :goto_4
    return-void

    .line 460
    :cond_5
    const/4 v0, 0x0

    .line 461
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/k;->m()F

    move-result v1

    const/high16 v2, 0x4188

    cmpl-float v1, v1, v2

    if-lez v1, :cond_16

    .line 462
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bM;->i:Lcom/google/android/maps/driveabout/vector/bL;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/bL;->e(Lcom/google/android/maps/driveabout/vector/k;)Ln/p;

    move-result-object v0

    .line 464
    :cond_16
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bM;->g:Ll/q;

    invoke-virtual {v1, v0}, Ll/q;->d(Ln/p;)V

    goto :goto_4
.end method

.method private r()V
    .registers 3

    .prologue
    .line 604
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bM;->g:Ll/q;

    invoke-virtual {v0}, Ll/q;->c()Ln/w;

    move-result-object v0

    .line 605
    if-nez v0, :cond_18

    const/4 v0, 0x0

    .line 607
    :goto_9
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bM;->j:Lcom/google/android/maps/driveabout/vector/bO;

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Ln/x;->f()I

    move-result v0

    if-gez v0, :cond_1f

    const/4 v0, 0x1

    :goto_14
    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/vector/bO;->b(Z)V

    .line 609
    return-void

    .line 605
    :cond_18
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bM;->g:Ll/q;

    invoke-virtual {v1, v0}, Ll/q;->b(Ln/w;)Ln/x;

    move-result-object v0

    goto :goto_9

    .line 607
    :cond_1f
    const/4 v0, 0x0

    goto :goto_14
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/k;)I
    .registers 7
    .parameter

    .prologue
    const/4 v1, 0x2

    .line 854
    const/4 v0, 0x0

    .line 855
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bM;->j:Lcom/google/android/maps/driveabout/vector/bO;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/bO;->h()Z

    move-result v2

    if-eqz v2, :cond_b

    move v0, v1

    .line 858
    :cond_b
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bM;->k:Ljava/util/Set;

    monitor-enter v2

    .line 859
    :try_start_e
    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/bM;->k:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 860
    monitor-exit v2

    .line 883
    :goto_17
    return v0

    .line 862
    :cond_18
    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/bM;->k:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_38

    .line 863
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll/k;

    .line 864
    invoke-virtual {v0}, Ll/k;->f()Z

    move-result v0

    if-nez v0, :cond_36

    .line 865
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 866
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bM;->e:Z

    :cond_36
    move v0, v1

    .line 869
    goto :goto_1e

    .line 870
    :cond_38
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bM;->k:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 873
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bM;->i:Lcom/google/android/maps/driveabout/vector/bL;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/bL;->c()V

    .line 876
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bM;->g:Ll/q;

    invoke-virtual {v1}, Ll/q;->b()V

    .line 880
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/bM;->e()V

    .line 882
    :cond_4d
    monitor-exit v2

    goto :goto_17

    :catchall_4f
    move-exception v0

    monitor-exit v2
    :try_end_51
    .catchall {:try_start_e .. :try_end_51} :catchall_4f

    throw v0
.end method

.method public a(Ln/aK;Lcom/google/android/maps/driveabout/vector/ct;Ljava/util/Set;)I
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 712
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bM;->g:Ll/q;

    invoke-virtual {v0}, Ll/q;->g()Ljava/util/Set;

    move-result-object v2

    .line 713
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/bM;->n()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_e
    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/aV;

    .line 714
    if-eqz v0, :cond_e

    .line 718
    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/aV;->b()Ln/am;

    move-result-object v1

    sget-object v4, Ln/aq;->c:Ln/aq;

    invoke-virtual {v1, v4}, Ln/am;->a(Ln/aq;)Ln/ao;

    move-result-object v1

    check-cast v1, Ln/C;

    .line 719
    invoke-virtual {v1}, Ln/C;->b()Ln/p;

    move-result-object v1

    .line 720
    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 724
    if-eqz p1, :cond_42

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/aV;->b()Ln/am;

    move-result-object v4

    invoke-virtual {v4}, Ln/am;->h()Ln/aa;

    move-result-object v4

    invoke-virtual {p1, v4}, Ln/aK;->b(Ln/ab;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 726
    :cond_42
    invoke-direct {p0, v1}, Lcom/google/android/maps/driveabout/vector/bM;->a(Ln/p;)Lcom/google/android/maps/driveabout/vector/bY;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/vector/aV;->a(Lcom/google/android/maps/driveabout/vector/bY;)V

    .line 727
    invoke-interface {v0, p2}, Lcom/google/android/maps/driveabout/vector/aV;->a(Lcom/google/android/maps/driveabout/vector/ct;)Z

    goto :goto_e

    .line 732
    :cond_4d
    const/4 v0, 0x0

    return v0
.end method

.method public a(Ln/Q;)Ln/B;
    .registers 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 762
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bM;->i:Lcom/google/android/maps/driveabout/vector/bL;

    if-nez v0, :cond_7

    move-object v0, v1

    .line 781
    :goto_6
    return-object v0

    .line 765
    :cond_7
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bM;->i:Lcom/google/android/maps/driveabout/vector/bL;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bL;->d()Ljava/util/List;

    move-result-object v0

    .line 766
    if-nez v0, :cond_11

    move-object v0, v1

    .line 767
    goto :goto_6

    .line 770
    :cond_11
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/am;

    .line 771
    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/bM;->h:Ll/n;

    invoke-virtual {v3, v0}, Ll/n;->a(Ln/am;)Ll/l;

    move-result-object v3

    .line 772
    if-eqz v3, :cond_15

    .line 773
    invoke-virtual {v3, p1}, Ll/l;->a(Ln/Q;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 774
    sget-object v1, Ln/aq;->c:Ln/aq;

    invoke-virtual {v0, v1}, Ln/am;->a(Ln/aq;)Ln/ao;

    move-result-object v0

    check-cast v0, Ln/C;

    .line 775
    invoke-virtual {v0}, Ln/C;->c()Ln/B;

    move-result-object v0

    goto :goto_6

    :cond_3c
    move-object v0, v1

    .line 781
    goto :goto_6
.end method

.method public a()V
    .registers 1

    .prologue
    .line 904
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/bM;->e()V

    .line 905
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/E;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 560
    invoke-interface {p3}, Lcom/google/android/maps/driveabout/vector/E;->c()Lcom/google/android/maps/driveabout/vector/cv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cv;->b()Lcom/google/android/maps/driveabout/vector/cw;

    move-result-object v0

    sget-object v1, Lcom/google/android/maps/driveabout/vector/cw;->d:Lcom/google/android/maps/driveabout/vector/cw;

    if-ne v0, v1, :cond_1a

    .line 561
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bM;->j:Lcom/google/android/maps/driveabout/vector/bO;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bO;->e()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 562
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bM;->j:Lcom/google/android/maps/driveabout/vector/bO;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/maps/driveabout/vector/bO;->a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/E;)V

    .line 577
    :cond_19
    :goto_19
    return-void

    .line 565
    :cond_1a
    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/k;->m()F

    move-result v0

    const v1, 0x416e6666

    cmpl-float v0, v0, v1

    if-lez v0, :cond_29

    .line 566
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/maps/driveabout/vector/db;->a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/E;)V

    goto :goto_19

    .line 569
    :cond_29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bM;->b:Z

    goto :goto_19
.end method

.method protected a(Lcom/google/android/maps/driveabout/vector/cY;)V
    .registers 3
    .parameter

    .prologue
    .line 651
    move-object v0, p1

    check-cast v0, Lcom/google/android/maps/driveabout/vector/bL;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bM;->i:Lcom/google/android/maps/driveabout/vector/bL;

    .line 652
    invoke-super {p0, p1}, Lcom/google/android/maps/driveabout/vector/db;->a(Lcom/google/android/maps/driveabout/vector/cY;)V

    .line 653
    return-void
.end method

.method public a(Ljava/util/Set;Ljava/util/Map;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 739
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bM;->g:Ll/q;

    invoke-virtual {v0}, Ll/q;->f()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/x;

    .line 740
    invoke-virtual {v0}, Ln/x;->b()Ln/p;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/vector/bM;->a(Ln/p;)Lcom/google/android/maps/driveabout/vector/bY;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 745
    :cond_22
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bM;->m:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 746
    return-void
.end method

.method public a(Ll/q;)V
    .registers 4
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 614
    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bM;->d:Z

    .line 615
    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bM;->e:Z

    .line 616
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/bM;->r()V

    .line 618
    invoke-virtual {p1}, Ll/q;->c()Ln/w;

    move-result-object v0

    .line 621
    if-eqz v0, :cond_22

    .line 622
    invoke-virtual {v0}, Ln/w;->b()Ljava/util/List;

    move-result-object v0

    sget-object v1, Ln/y;->a:Lcom/google/common/base/D;

    invoke-static {v0, v1}, Lcom/google/common/collect/bT;->a(Ljava/lang/Iterable;Lcom/google/common/base/D;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->a(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bM;->l:Ljava/util/Set;

    .line 629
    :goto_1e
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/bM;->e()V

    .line 630
    return-void

    .line 626
    :cond_22
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->f()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bM;->l:Ljava/util/Set;

    goto :goto_1e
.end method

.method public a(Ll/q;Ln/w;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 634
    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bM;->d:Z

    .line 635
    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bM;->e:Z

    .line 636
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/bM;->r()V

    .line 637
    invoke-direct {p0, p2}, Lcom/google/android/maps/driveabout/vector/bM;->a(Ln/w;)V

    .line 638
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/bM;->e()V

    .line 639
    return-void
.end method

.method public a(Ln/am;Ll/l;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 897
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/bM;->e()V

    .line 898
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/aU;)Z
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 376
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/bM;->e(Lcom/google/android/maps/driveabout/vector/k;)V

    .line 377
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/bM;->d(Lcom/google/android/maps/driveabout/vector/k;)V

    .line 378
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bM;->m:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 379
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/k;->m()F

    move-result v1

    const v2, 0x416e6666

    cmpl-float v1, v1, v2

    if-lez v1, :cond_22

    .line 380
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bM;->d:Z

    .line 381
    invoke-super {p0, p1, p2}, Lcom/google/android/maps/driveabout/vector/db;->a(Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/aU;)Z

    move-result v0

    .line 382
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/bM;->c(Lcom/google/android/maps/driveabout/vector/k;)V

    .line 386
    :goto_21
    return v0

    .line 385
    :cond_22
    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bM;->d:Z

    goto :goto_21
.end method

.method a(Ljava/util/List;)Z
    .registers 12
    .parameter

    .prologue
    const/4 v9, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 492
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bM;->e:Z

    if-eqz v0, :cond_f7

    .line 493
    iput-boolean v3, p0, Lcom/google/android/maps/driveabout/vector/bM;->e:Z

    .line 494
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 496
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bM;->j:Lcom/google/android/maps/driveabout/vector/bO;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bO;->e()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 497
    sget-object v0, Lcom/google/android/maps/driveabout/vector/cw;->d:Lcom/google/android/maps/driveabout/vector/cw;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/vector/bM;->a(Lcom/google/android/maps/driveabout/vector/cw;)Lcom/google/android/maps/driveabout/vector/cv;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 501
    :cond_1d
    invoke-static {}, Lcom/google/common/collect/dm;->a()Ljava/util/HashSet;

    move-result-object v4

    .line 502
    invoke-static {}, Lcom/google/common/collect/dm;->a()Ljava/util/HashSet;

    move-result-object v5

    .line 505
    invoke-static {}, Lcom/google/common/collect/dm;->a()Ljava/util/HashSet;

    move-result-object v0

    .line 506
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bM;->g:Ll/q;

    invoke-virtual {v1}, Ll/q;->i()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 507
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bM;->k:Ljava/util/Set;

    monitor-enter v1

    .line 508
    :try_start_35
    iget-object v6, p0, Lcom/google/android/maps/driveabout/vector/bM;->k:Ljava/util/Set;

    invoke-interface {v0, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 509
    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_35 .. :try_end_3b} :catchall_74

    .line 510
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3f
    :goto_3f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll/k;

    .line 514
    invoke-virtual {v0}, Ll/k;->d()Z

    move-result v1

    if-eqz v1, :cond_77

    .line 515
    sget-object v1, Lcom/google/android/maps/driveabout/vector/cw;->h:Lcom/google/android/maps/driveabout/vector/cw;

    new-array v7, v2, [Lcom/google/android/maps/driveabout/vector/cx;

    aput-object v0, v7, v3

    invoke-virtual {p0, v1, v7}, Lcom/google/android/maps/driveabout/vector/bM;->a(Lcom/google/android/maps/driveabout/vector/cw;[Lcom/google/android/maps/driveabout/vector/cx;)Lcom/google/android/maps/driveabout/vector/cv;

    move-result-object v1

    .line 526
    :goto_5b
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 527
    invoke-virtual {v0}, Ll/k;->b()F

    move-result v1

    cmpl-float v1, v1, v9

    if-lez v1, :cond_a1

    invoke-virtual {v0}, Ll/k;->d()Z

    move-result v1

    if-nez v1, :cond_a1

    .line 528
    invoke-virtual {v0}, Ll/k;->g()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_3f

    .line 509
    :catchall_74
    move-exception v0

    :try_start_75
    monitor-exit v1
    :try_end_76
    .catchall {:try_start_75 .. :try_end_76} :catchall_74

    throw v0

    .line 517
    :cond_77
    invoke-virtual {v0}, Ll/k;->b()F

    move-result v1

    cmpg-float v1, v1, v9

    if-gez v1, :cond_90

    .line 518
    sget-object v1, Lcom/google/android/maps/driveabout/vector/cw;->f:Lcom/google/android/maps/driveabout/vector/cw;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->a(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/maps/driveabout/vector/bM;->p:Lcom/google/android/maps/driveabout/vector/cx;

    invoke-static {v8}, Lcom/google/common/collect/ImmutableList;->a(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v8

    invoke-virtual {p0, v1, v7, v8}, Lcom/google/android/maps/driveabout/vector/bM;->a(Lcom/google/android/maps/driveabout/vector/cw;Ljava/util/Collection;Ljava/util/Collection;)Lcom/google/android/maps/driveabout/vector/cv;

    move-result-object v1

    goto :goto_5b

    .line 522
    :cond_90
    sget-object v1, Lcom/google/android/maps/driveabout/vector/cw;->c:Lcom/google/android/maps/driveabout/vector/cw;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->a(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/maps/driveabout/vector/bM;->p:Lcom/google/android/maps/driveabout/vector/cx;

    invoke-static {v8}, Lcom/google/common/collect/ImmutableList;->a(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v8

    invoke-virtual {p0, v1, v7, v8}, Lcom/google/android/maps/driveabout/vector/bM;->a(Lcom/google/android/maps/driveabout/vector/cw;Ljava/util/Collection;Ljava/util/Collection;)Lcom/google/android/maps/driveabout/vector/cv;

    move-result-object v1

    goto :goto_5b

    .line 529
    :cond_a1
    invoke-virtual {v0}, Ll/k;->b()F

    move-result v1

    cmpg-float v1, v1, v9

    if-gez v1, :cond_3f

    invoke-virtual {v0}, Ll/k;->d()Z

    move-result v1

    if-nez v1, :cond_3f

    .line 530
    invoke-virtual {v0}, Ll/k;->g()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 531
    sget-object v1, Lcom/google/android/maps/driveabout/vector/cw;->g:Lcom/google/android/maps/driveabout/vector/cw;

    new-array v7, v2, [Lcom/google/android/maps/driveabout/vector/cx;

    aput-object v0, v7, v3

    invoke-virtual {p0, v1, v7}, Lcom/google/android/maps/driveabout/vector/bM;->a(Lcom/google/android/maps/driveabout/vector/cw;[Lcom/google/android/maps/driveabout/vector/cx;)Lcom/google/android/maps/driveabout/vector/cv;

    move-result-object v0

    .line 532
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3f

    .line 537
    :cond_c5
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_dd

    .line 538
    sget-object v0, Lcom/google/android/maps/driveabout/vector/cw;->b:Lcom/google/android/maps/driveabout/vector/cw;

    new-array v1, v2, [Lcom/google/android/maps/driveabout/vector/cx;

    new-instance v6, Lcom/google/android/maps/driveabout/vector/bP;

    invoke-direct {v6, v4}, Lcom/google/android/maps/driveabout/vector/bP;-><init>(Ljava/util/Set;)V

    aput-object v6, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/google/android/maps/driveabout/vector/bM;->a(Lcom/google/android/maps/driveabout/vector/cw;[Lcom/google/android/maps/driveabout/vector/cx;)Lcom/google/android/maps/driveabout/vector/cv;

    move-result-object v0

    .line 540
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 542
    :cond_dd
    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f5

    .line 543
    sget-object v0, Lcom/google/android/maps/driveabout/vector/cw;->e:Lcom/google/android/maps/driveabout/vector/cw;

    new-array v1, v2, [Lcom/google/android/maps/driveabout/vector/cx;

    new-instance v4, Lcom/google/android/maps/driveabout/vector/bP;

    invoke-direct {v4, v5}, Lcom/google/android/maps/driveabout/vector/bP;-><init>(Ljava/util/Set;)V

    aput-object v4, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/google/android/maps/driveabout/vector/bM;->a(Lcom/google/android/maps/driveabout/vector/cw;[Lcom/google/android/maps/driveabout/vector/cx;)Lcom/google/android/maps/driveabout/vector/cv;

    move-result-object v0

    .line 545
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_f5
    move v0, v2

    .line 549
    :goto_f6
    return v0

    :cond_f7
    move v0, v3

    goto :goto_f6
.end method

.method public a_(Lcom/google/android/maps/driveabout/vector/aU;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 581
    invoke-super {p0, p1}, Lcom/google/android/maps/driveabout/vector/db;->a_(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 582
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bM;->g:Ll/q;

    invoke-virtual {v0, v1}, Ll/q;->d(Ln/p;)V

    .line 583
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bM;->g:Ll/q;

    invoke-virtual {v0, v1}, Ll/q;->a(Ljava/util/Set;)V

    .line 584
    return-void
.end method

.method protected b(Lcom/google/android/maps/driveabout/vector/k;)Ljava/util/Set;
    .registers 3
    .parameter

    .prologue
    .line 392
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bM;->i:Lcom/google/android/maps/driveabout/vector/bL;

    if-nez v0, :cond_9

    .line 393
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->f()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    .line 395
    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bM;->i:Lcom/google/android/maps/driveabout/vector/bL;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/bL;->b(Lcom/google/android/maps/driveabout/vector/k;)Ljava/util/Set;

    move-result-object v0

    goto :goto_8
.end method

.method public b(Ll/q;)V
    .registers 3
    .parameter

    .prologue
    .line 643
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bM;->e:Z

    .line 644
    return-void
.end method

.method public b(Ljava/util/List;)Z
    .registers 3
    .parameter

    .prologue
    .line 487
    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/vector/bM;->a(Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method public c()Lcom/google/android/maps/driveabout/vector/l;
    .registers 2

    .prologue
    .line 888
    const/4 v0, 0x0

    return-object v0
.end method

.method public e()V
    .registers 4

    .prologue
    .line 588
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bM;->i:Lcom/google/android/maps/driveabout/vector/bL;

    if-nez v0, :cond_5

    .line 601
    :cond_4
    :goto_4
    return-void

    .line 594
    :cond_5
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bM;->i:Lcom/google/android/maps/driveabout/vector/bL;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bL;->b()V

    .line 595
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bM;->a:Lcom/google/android/maps/driveabout/vector/cH;

    .line 596
    if-eqz v0, :cond_4

    .line 597
    const/4 v1, 0x1

    .line 598
    const/4 v2, 0x0

    .line 599
    invoke-interface {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/cH;->a(ZZ)V

    goto :goto_4
.end method

.method public z()Lcom/google/android/maps/driveabout/vector/b;
    .registers 1

    .prologue
    .line 555
    return-object p0
.end method
