.class public abstract Lat/u;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:I

.field protected b:I

.field private final c:Ljava/util/Set;

.field private final d:Landroid/graphics/Point;

.field private final e:Landroid/graphics/Point;

.field private f:Lat/Y;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lat/u;->c:Ljava/util/Set;

    .line 61
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lat/u;->d:Landroid/graphics/Point;

    .line 67
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lat/u;->e:Landroid/graphics/Point;

    return-void
.end method

.method public static a(Lat/H;Lat/H;)I
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 300
    if-eqz p0, :cond_1c

    if-eqz p1, :cond_1c

    invoke-virtual {p0}, Lat/H;->a()Lat/B;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-virtual {p1}, Lat/H;->a()Lat/B;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-virtual {p0}, Lat/H;->b()Lat/Y;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-virtual {p1}, Lat/H;->a()Lat/B;

    move-result-object v0

    if-nez v0, :cond_1e

    .line 303
    :cond_1c
    const/4 v0, -0x1

    .line 319
    :goto_1d
    return v0

    .line 306
    :cond_1e
    invoke-virtual {p0}, Lat/H;->a()Lat/B;

    move-result-object v0

    .line 307
    invoke-virtual {p1}, Lat/H;->a()Lat/B;

    move-result-object v1

    .line 309
    invoke-virtual {v0}, Lat/B;->e()I

    move-result v2

    invoke-virtual {p0}, Lat/H;->b()Lat/Y;

    move-result-object v3

    invoke-static {v2, v3}, Lat/B;->a(ILat/Y;)I

    move-result v2

    .line 310
    invoke-virtual {v0}, Lat/B;->c()I

    move-result v0

    invoke-virtual {p0}, Lat/H;->b()Lat/Y;

    move-result-object v3

    invoke-static {v0, v3}, Lat/B;->b(ILat/Y;)I

    move-result v0

    .line 312
    invoke-virtual {v1}, Lat/B;->e()I

    move-result v3

    invoke-virtual {p1}, Lat/H;->b()Lat/Y;

    move-result-object v4

    invoke-static {v3, v4}, Lat/B;->a(ILat/Y;)I

    move-result v3

    .line 313
    invoke-virtual {v1}, Lat/B;->c()I

    move-result v1

    invoke-virtual {p1}, Lat/H;->b()Lat/Y;

    move-result-object v4

    invoke-static {v1, v4}, Lat/B;->b(ILat/Y;)I

    move-result v1

    .line 315
    sub-int/2addr v2, v3

    .line 316
    sub-int/2addr v0, v1

    .line 318
    mul-int v1, v2, v2

    mul-int/2addr v0, v0

    add-int/2addr v0, v1

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 319
    goto :goto_1d
.end method

.method public static b(I)I
    .registers 3
    .parameter

    .prologue
    .line 291
    const/16 v0, 0x50

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 292
    mul-int/lit8 v0, v0, 0xa

    add-int/lit16 v0, v0, 0xc8

    const/16 v1, 0x2bc

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method


# virtual methods
.method public abstract a(ILat/B;)F
.end method

.method public abstract a()I
.end method

.method public a(ILat/H;)I
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 214
    invoke-virtual {p0, p2}, Lat/u;->a(Lat/H;)I

    move-result v0

    .line 215
    int-to-float v1, p1

    invoke-static {}, Lcom/google/googlenav/ui/bn;->d()Lcom/google/googlenav/ui/bn;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/ui/bn;->F()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 216
    int-to-float v2, v0

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 217
    sub-int/2addr v0, v1

    return v0
.end method

.method public abstract a(Lat/B;)I
.end method

.method public abstract a(Lat/H;)I
.end method

.method protected abstract a(Lat/B;Lat/Y;II)Lat/B;
.end method

.method public a(Lcom/google/googlenav/E;Lat/B;IIIIIIILat/Y;)Lat/B;
    .registers 22
    .parameter
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
    .line 586
    invoke-interface {p1}, Lcom/google/googlenav/E;->a()Lat/B;

    move-result-object v1

    .line 587
    if-nez v1, :cond_7

    .line 649
    :goto_6
    return-object p2

    .line 591
    :cond_7
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    .line 592
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 593
    move-object/from16 v0, p10

    invoke-virtual {p0, p2, v0, p2, v5}, Lat/u;->a(Lat/B;Lat/Y;Lat/B;Landroid/graphics/Point;)V

    .line 594
    move-object/from16 v0, p10

    invoke-virtual {p0, p2, v0, v1, v4}, Lat/u;->a(Lat/B;Lat/Y;Lat/B;Landroid/graphics/Point;)V

    .line 597
    iget v1, v4, Landroid/graphics/Point;->x:I

    iget v2, v5, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v2

    add-int v6, v1, p7

    .line 598
    iget v1, v4, Landroid/graphics/Point;->y:I

    iget v2, v5, Landroid/graphics/Point;->y:I

    sub-int v7, v1, v2

    .line 603
    move/from16 v0, p5

    invoke-static {p3, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    div-int/lit8 v8, v1, 0x2

    .line 604
    add-int v9, p4, p6

    .line 609
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/K;->al()Z

    move-result v1

    if-eqz v1, :cond_9d

    const/4 v1, 0x5

    .line 612
    :goto_3d
    const/4 v2, 0x0

    .line 615
    neg-int v3, v6

    add-int v3, v3, p9

    add-int/2addr v3, v8

    iget v10, p0, Lat/u;->a:I

    div-int/lit8 v10, v10, 0x2

    if-gt v3, v10, :cond_50

    add-int v3, v6, v8

    iget v10, p0, Lat/u;->a:I

    div-int/lit8 v10, v10, 0x2

    if-le v3, v10, :cond_9f

    :cond_50
    const/4 v3, 0x1

    .line 617
    :goto_51
    if-eqz v3, :cond_63

    .line 618
    iget v2, v4, Landroid/graphics/Point;->x:I

    iget v3, v5, Landroid/graphics/Point;->x:I

    div-int/lit8 v4, p9, 0x2

    add-int/2addr v3, v4

    if-le v2, v3, :cond_a1

    .line 620
    iget v2, p0, Lat/u;->a:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v2, v6

    sub-int/2addr v2, v8

    neg-int v2, v2

    .line 628
    :cond_63
    :goto_63
    const/4 v3, 0x0

    .line 630
    neg-int v4, v7

    add-int v4, v4, p8

    add-int/2addr v4, v9

    iget v6, p0, Lat/u;->b:I

    div-int/lit8 v6, v6, 0x2

    if-gt v4, v6, :cond_76

    add-int v4, v7, v1

    iget v6, p0, Lat/u;->b:I

    div-int/lit8 v6, v6, 0x2

    if-le v4, v6, :cond_aa

    :cond_76
    const/4 v4, 0x1

    .line 633
    :goto_77
    if-eqz v4, :cond_b5

    .line 634
    if-lez v7, :cond_ac

    .line 636
    iget v3, p0, Lat/u;->b:I

    div-int/lit8 v3, v3, 0x2

    sub-int v3, v7, v3

    add-int/2addr v1, v3

    .line 643
    :goto_82
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 644
    iget v4, v5, Landroid/graphics/Point;->x:I

    add-int/2addr v2, v4

    iput v2, v3, Landroid/graphics/Point;->x:I

    .line 645
    iget v2, v5, Landroid/graphics/Point;->y:I

    add-int/2addr v1, v2

    iput v1, v3, Landroid/graphics/Point;->y:I

    .line 646
    iget v1, v3, Landroid/graphics/Point;->x:I

    iget v2, v3, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p10

    invoke-virtual {p0, p2, v0, v1, v2}, Lat/u;->a(Lat/B;Lat/Y;II)Lat/B;

    move-result-object p2

    goto/16 :goto_6

    .line 609
    :cond_9d
    const/4 v1, 0x0

    goto :goto_3d

    .line 615
    :cond_9f
    const/4 v3, 0x0

    goto :goto_51

    .line 623
    :cond_a1
    iget v2, p0, Lat/u;->a:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v6

    sub-int/2addr v2, v8

    sub-int v2, v2, p9

    goto :goto_63

    .line 630
    :cond_aa
    const/4 v4, 0x0

    goto :goto_77

    .line 639
    :cond_ac
    iget v1, p0, Lat/u;->b:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v7

    sub-int/2addr v1, v9

    sub-int v1, v1, p8

    goto :goto_82

    :cond_b5
    move v1, v3

    goto :goto_82
.end method

.method public a(IIII)Lat/Y;
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 492
    invoke-virtual {p0}, Lat/u;->f()Lat/H;

    move-result-object v1

    .line 493
    invoke-virtual {v1}, Lat/H;->a()Lat/B;

    move-result-object v0

    invoke-virtual {p0, v0}, Lat/u;->a(Lat/B;)I

    move-result v0

    invoke-static {v0}, Lat/Y;->b(I)Lat/Y;

    move-result-object v0

    .line 494
    if-nez v0, :cond_33

    .line 495
    invoke-static {}, Lat/Y;->e()I

    move-result v0

    invoke-static {v0}, Lat/Y;->b(I)Lat/Y;

    move-result-object v0

    .line 513
    :cond_1a
    :goto_1a
    return-object v0

    :cond_1b
    move-object v0, v1

    .line 499
    :goto_1c
    invoke-virtual {v0}, Lat/Y;->d()Lat/Y;

    move-result-object v1

    .line 500
    if-eqz v1, :cond_1a

    .line 505
    invoke-virtual {v2, v0}, Lat/H;->a(Lat/Y;)Lat/H;

    move-result-object v2

    .line 506
    invoke-virtual {p0, p4, v2}, Lat/u;->a(ILat/H;)I

    move-result v3

    if-gt p1, v3, :cond_1b

    invoke-virtual {p0, p3, v2}, Lat/u;->b(ILat/H;)I

    move-result v3

    if-gt p2, v3, :cond_1b

    goto :goto_1a

    :cond_33
    move-object v2, v1

    goto :goto_1c
.end method

.method public abstract a(I)V
.end method

.method public abstract a(II)V
.end method

.method protected abstract a(Lat/B;Landroid/graphics/Point;)V
.end method

.method public abstract a(Lat/B;Lat/Y;)V
.end method

.method protected abstract a(Lat/B;Lat/Y;Lat/B;Landroid/graphics/Point;)V
.end method

.method public final a(Lat/Y;)V
    .registers 3
    .parameter

    .prologue
    .line 473
    invoke-virtual {p0}, Lat/u;->p()V

    .line 475
    invoke-virtual {p0}, Lat/u;->c()Lat/B;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lat/u;->e(Lat/B;Lat/Y;)V

    .line 476
    return-void
.end method

.method protected abstract a(Lat/Y;II)V
.end method

.method public a(Lat/v;)V
    .registers 4
    .parameter

    .prologue
    .line 82
    iget-object v1, p0, Lat/u;->c:Ljava/util/Set;

    monitor-enter v1

    .line 83
    :try_start_3
    iget-object v0, p0, Lat/u;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 84
    monitor-exit v1

    .line 85
    return-void

    .line 84
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public abstract a(Ln/B;)V
.end method

.method protected a(ZZZ)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 99
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lat/u;->a(ZZZII)V

    .line 100
    return-void
.end method

.method protected a(ZZZII)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 109
    iget-object v1, p0, Lat/u;->c:Ljava/util/Set;

    monitor-enter v1

    .line 110
    :try_start_3
    iget-object v0, p0, Lat/u;->c:Ljava/util/Set;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    .line 111
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_23

    .line 113
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lat/v;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 114
    invoke-interface/range {v0 .. v5}, Lat/v;->a(ZZZII)V

    goto :goto_e

    .line 111
    :catchall_23
    move-exception v0

    :try_start_24
    monitor-exit v1
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw v0

    .line 116
    :cond_26
    return-void
.end method

.method public abstract a([Lat/B;IIILat/Y;)V
.end method

.method public declared-synchronized a(Lat/B;Lat/B;I)Z
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 682
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lat/u;->d:Landroid/graphics/Point;

    invoke-virtual {p0, p1, v0}, Lat/u;->a(Lat/B;Landroid/graphics/Point;)V

    .line 683
    iget-object v0, p0, Lat/u;->e:Landroid/graphics/Point;

    invoke-virtual {p0, p2, v0}, Lat/u;->a(Lat/B;Landroid/graphics/Point;)V

    .line 684
    iget-object v0, p0, Lat/u;->d:Landroid/graphics/Point;

    iget-object v1, p0, Lat/u;->e:Landroid/graphics/Point;

    invoke-static {v0, v1, p3}, LS/r;->a(Landroid/graphics/Point;Landroid/graphics/Point;I)Z
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_15

    move-result v0

    monitor-exit p0

    return v0

    .line 682
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Z)Z
    .registers 4
    .parameter

    .prologue
    .line 401
    iget v0, p0, Lat/u;->a:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lat/u;->b:I

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, p1, v0, v1}, Lat/u;->a(ZII)Z

    move-result v0

    return v0
.end method

.method public final a(ZII)Z
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 414
    iget-object v0, p0, Lat/u;->f:Lat/Y;

    if-nez v0, :cond_a

    .line 415
    invoke-virtual {p0}, Lat/u;->d()Lat/Y;

    move-result-object v0

    iput-object v0, p0, Lat/u;->f:Lat/Y;

    .line 418
    :cond_a
    if-eqz p1, :cond_22

    iget-object v0, p0, Lat/u;->f:Lat/Y;

    invoke-virtual {v0}, Lat/Y;->d()Lat/Y;

    move-result-object v0

    .line 425
    :goto_12
    if-eqz v0, :cond_20

    invoke-virtual {v0}, Lat/Y;->a()I

    move-result v1

    iget-object v2, p0, Lat/u;->f:Lat/Y;

    invoke-virtual {v2}, Lat/Y;->a()I

    move-result v2

    if-ne v1, v2, :cond_29

    .line 427
    :cond_20
    const/4 v0, 0x0

    .line 435
    :goto_21
    return v0

    .line 418
    :cond_22
    iget-object v0, p0, Lat/u;->f:Lat/Y;

    invoke-virtual {v0}, Lat/Y;->c()Lat/Y;

    move-result-object v0

    goto :goto_12

    .line 429
    :cond_29
    invoke-virtual {p0, v0, p2, p3}, Lat/u;->a(Lat/Y;II)V

    .line 433
    iput-object v0, p0, Lat/u;->f:Lat/Y;

    .line 435
    const/4 v0, 0x1

    goto :goto_21
.end method

.method public abstract b()I
.end method

.method public b(ILat/H;)I
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 231
    invoke-virtual {p0, p2}, Lat/u;->b(Lat/H;)I

    move-result v0

    .line 232
    int-to-float v1, p1

    invoke-static {}, Lcom/google/googlenav/ui/bn;->d()Lcom/google/googlenav/ui/bn;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/ui/bn;->E()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 233
    int-to-float v2, v0

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 234
    sub-int/2addr v0, v1

    return v0
.end method

.method public abstract b(Lat/H;)I
.end method

.method public b(II)Lat/B;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 731
    invoke-virtual {p0}, Lat/u;->c()Lat/B;

    move-result-object v0

    invoke-virtual {p0}, Lat/u;->d()Lat/Y;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p1, p2}, Lat/u;->a(Lat/B;Lat/Y;II)Lat/B;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lat/B;)V
    .registers 3
    .parameter

    .prologue
    .line 335
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lat/u;->b(Lat/B;Lat/Y;)V

    .line 336
    return-void
.end method

.method protected abstract b(Lat/B;Lat/Y;)V
.end method

.method public abstract c()Lat/B;
.end method

.method public c(II)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 140
    iput p1, p0, Lat/u;->a:I

    .line 141
    iput p2, p0, Lat/u;->b:I

    .line 142
    return-void
.end method

.method public final c(Lat/B;)V
    .registers 3
    .parameter

    .prologue
    .line 462
    invoke-virtual {p0}, Lat/u;->d()Lat/Y;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lat/u;->e(Lat/B;Lat/Y;)V

    .line 463
    return-void
.end method

.method protected abstract c(Lat/B;Lat/Y;)V
.end method

.method public abstract d()Lat/Y;
.end method

.method public final d(II)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 521
    const/4 v0, 0x0

    invoke-static {}, Lcom/google/googlenav/actionbar/a;->a()Lcom/google/googlenav/actionbar/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/actionbar/a;->k()I

    move-result v1

    invoke-virtual {p0, p1, p2, v0, v1}, Lat/u;->a(IIII)Lat/Y;

    move-result-object v0

    invoke-virtual {p0, v0}, Lat/u;->a(Lat/Y;)V

    .line 523
    return-void
.end method

.method public final d(Lat/B;Lat/Y;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 347
    invoke-virtual {p0, p1, p2}, Lat/u;->b(Lat/B;Lat/Y;)V

    .line 348
    return-void
.end method

.method public d(Lat/B;)Z
    .registers 5
    .parameter

    .prologue
    .line 657
    invoke-virtual {p0, p1}, Lat/u;->f(Lat/B;)Landroid/graphics/Point;

    move-result-object v0

    .line 658
    iget v1, v0, Landroid/graphics/Point;->x:I

    if-ltz v1, :cond_1a

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, p0, Lat/u;->a:I

    if-ge v1, v2, :cond_1a

    iget v1, v0, Landroid/graphics/Point;->y:I

    if-ltz v1, :cond_1a

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v1, p0, Lat/u;->b:I

    if-ge v0, v1, :cond_1a

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public abstract e()F
.end method

.method public final e(Lat/B;Lat/Y;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 533
    invoke-virtual {p0, p1, p2}, Lat/u;->c(Lat/B;Lat/Y;)V

    .line 534
    return-void
.end method

.method public e(Lat/B;)Z
    .registers 5
    .parameter

    .prologue
    .line 671
    invoke-virtual {p0, p1}, Lat/u;->f(Lat/B;)Landroid/graphics/Point;

    move-result-object v0

    .line 672
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, p0, Lat/u;->a:I

    neg-int v2, v2

    if-lt v1, v2, :cond_24

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, p0, Lat/u;->a:I

    mul-int/lit8 v2, v2, 0x2

    if-ge v1, v2, :cond_24

    iget v1, v0, Landroid/graphics/Point;->y:I

    iget v2, p0, Lat/u;->b:I

    neg-int v2, v2

    if-lt v1, v2, :cond_24

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v1, p0, Lat/u;->b:I

    mul-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_24

    const/4 v0, 0x1

    :goto_23
    return v0

    :cond_24
    const/4 v0, 0x0

    goto :goto_23
.end method

.method public f(Lat/B;)Landroid/graphics/Point;
    .registers 3
    .parameter

    .prologue
    .line 718
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 719
    invoke-virtual {p0, p1, v0}, Lat/u;->a(Lat/B;Landroid/graphics/Point;)V

    .line 720
    return-object v0
.end method

.method public abstract f()Lat/H;
.end method

.method public abstract i()Z
.end method

.method public abstract j()Z
.end method

.method public abstract k()Z
.end method

.method protected l()V
    .registers 3

    .prologue
    .line 124
    iget-object v1, p0, Lat/u;->c:Ljava/util/Set;

    monitor-enter v1

    .line 125
    :try_start_3
    iget-object v0, p0, Lat/u;->c:Ljava/util/Set;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    .line 126
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_1e

    .line 128
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lat/v;

    .line 129
    invoke-interface {v0}, Lat/v;->i()V

    goto :goto_e

    .line 126
    :catchall_1e
    move-exception v0

    :try_start_1f
    monitor-exit v1
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v0

    .line 131
    :cond_21
    return-void
.end method

.method public m()I
    .registers 2

    .prologue
    .line 146
    iget v0, p0, Lat/u;->a:I

    return v0
.end method

.method public n()I
    .registers 2

    .prologue
    .line 151
    iget v0, p0, Lat/u;->b:I

    return v0
.end method

.method public o()Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 5

    .prologue
    .line 242
    invoke-virtual {p0}, Lat/u;->c()Lat/B;

    move-result-object v0

    invoke-virtual {p0}, Lat/u;->a()I

    move-result v1

    invoke-virtual {p0}, Lat/u;->b()I

    move-result v2

    invoke-virtual {p0}, Lat/u;->d()Lat/Y;

    move-result-object v3

    invoke-virtual {v3}, Lat/Y;->a()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lat/C;->a(Lat/B;III)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    return-object v0
.end method

.method public final p()V
    .registers 2

    .prologue
    .line 444
    const/4 v0, 0x0

    iput-object v0, p0, Lat/u;->f:Lat/Y;

    .line 445
    return-void
.end method
