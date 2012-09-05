.class public abstract LaJ/u;
.super Ljava/lang/Object;


# instance fields
.field protected a:I

.field protected b:I

.field private final c:Ljava/util/Set;

.field private final d:Landroid/graphics/Point;

.field private final e:Landroid/graphics/Point;

.field private f:LaJ/Y;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, LaJ/u;->c:Ljava/util/Set;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, LaJ/u;->d:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, LaJ/u;->e:Landroid/graphics/Point;

    return-void
.end method

.method public static a(LaJ/H;LaJ/H;)I
    .registers 7

    if-eqz p0, :cond_1c

    if-eqz p1, :cond_1c

    invoke-virtual {p0}, LaJ/H;->a()LaJ/B;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-virtual {p1}, LaJ/H;->a()LaJ/B;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-virtual {p0}, LaJ/H;->b()LaJ/Y;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-virtual {p1}, LaJ/H;->a()LaJ/B;

    move-result-object v0

    if-nez v0, :cond_1e

    :cond_1c
    const/4 v0, -0x1

    :goto_1d
    return v0

    :cond_1e
    invoke-virtual {p0}, LaJ/H;->a()LaJ/B;

    move-result-object v0

    invoke-virtual {p1}, LaJ/H;->a()LaJ/B;

    move-result-object v1

    invoke-virtual {v0}, LaJ/B;->e()I

    move-result v2

    invoke-virtual {p0}, LaJ/H;->b()LaJ/Y;

    move-result-object v3

    invoke-static {v2, v3}, LaJ/B;->a(ILaJ/Y;)I

    move-result v2

    invoke-virtual {v0}, LaJ/B;->c()I

    move-result v0

    invoke-virtual {p0}, LaJ/H;->b()LaJ/Y;

    move-result-object v3

    invoke-static {v0, v3}, LaJ/B;->b(ILaJ/Y;)I

    move-result v0

    invoke-virtual {v1}, LaJ/B;->e()I

    move-result v3

    invoke-virtual {p1}, LaJ/H;->b()LaJ/Y;

    move-result-object v4

    invoke-static {v3, v4}, LaJ/B;->a(ILaJ/Y;)I

    move-result v3

    invoke-virtual {v1}, LaJ/B;->c()I

    move-result v1

    invoke-virtual {p1}, LaJ/H;->b()LaJ/Y;

    move-result-object v4

    invoke-static {v1, v4}, LaJ/B;->b(ILaJ/Y;)I

    move-result v1

    sub-int/2addr v2, v3

    sub-int/2addr v0, v1

    mul-int v1, v2, v2

    mul-int/2addr v0, v0

    add-int/2addr v0, v1

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int v0, v0

    goto :goto_1d
.end method

.method public static b(I)I
    .registers 3

    const/16 v0, 0x50

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result v0

    mul-int/lit8 v0, v0, 0xa

    add-int/lit16 v0, v0, 0xc8

    const/16 v1, 0x2bc

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method


# virtual methods
.method public abstract a(ILaJ/B;)F
.end method

.method public abstract a()I
.end method

.method public a(ILaJ/H;)I
    .registers 6

    invoke-virtual {p0, p2}, LaJ/u;->a(LaJ/H;)I

    move-result v0

    int-to-float v1, p1

    invoke-static {}, Lcom/google/googlenav/ui/bw;->d()Lcom/google/googlenav/ui/bw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/ui/bw;->P()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    int-to-float v2, v0

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public abstract a(LaJ/B;)I
.end method

.method public abstract a(LaJ/H;)I
.end method

.method protected abstract a(LaJ/B;LaJ/Y;II)LaJ/B;
.end method

.method public a(Lcom/google/googlenav/D;LaJ/B;IIIIIIILaJ/Y;)LaJ/B;
    .registers 22

    invoke-interface {p1}, Lcom/google/googlenav/D;->a()LaJ/B;

    move-result-object v1

    if-nez v1, :cond_7

    :goto_6
    return-object p2

    :cond_7
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    move-object/from16 v0, p10

    invoke-virtual {p0, p2, v0, p2, v5}, LaJ/u;->a(LaJ/B;LaJ/Y;LaJ/B;Landroid/graphics/Point;)V

    move-object/from16 v0, p10

    invoke-virtual {p0, p2, v0, v1, v4}, LaJ/u;->a(LaJ/B;LaJ/Y;LaJ/B;Landroid/graphics/Point;)V

    iget v1, v4, Landroid/graphics/Point;->x:I

    iget v2, v5, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v2

    add-int v6, v1, p7

    iget v1, v4, Landroid/graphics/Point;->y:I

    iget v2, v5, Landroid/graphics/Point;->y:I

    sub-int v7, v1, v2

    move/from16 v0, p5

    invoke-static {p3, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    div-int/lit8 v8, v1, 0x2

    add-int v9, p4, p6

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/M;->ai()Z

    move-result v1

    if-eqz v1, :cond_9d

    const/4 v1, 0x5

    :goto_3d
    const/4 v2, 0x0

    neg-int v3, v6

    add-int v3, v3, p9

    add-int/2addr v3, v8

    iget v10, p0, LaJ/u;->a:I

    div-int/lit8 v10, v10, 0x2

    if-gt v3, v10, :cond_50

    add-int v3, v6, v8

    iget v10, p0, LaJ/u;->a:I

    div-int/lit8 v10, v10, 0x2

    if-le v3, v10, :cond_9f

    :cond_50
    const/4 v3, 0x1

    :goto_51
    if-eqz v3, :cond_63

    iget v2, v4, Landroid/graphics/Point;->x:I

    iget v3, v5, Landroid/graphics/Point;->x:I

    div-int/lit8 v4, p9, 0x2

    add-int/2addr v3, v4

    if-le v2, v3, :cond_a1

    iget v2, p0, LaJ/u;->a:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v2, v6

    sub-int/2addr v2, v8

    neg-int v2, v2

    :cond_63
    :goto_63
    const/4 v3, 0x0

    neg-int v4, v7

    add-int v4, v4, p8

    add-int/2addr v4, v9

    iget v6, p0, LaJ/u;->b:I

    div-int/lit8 v6, v6, 0x2

    if-gt v4, v6, :cond_76

    add-int v4, v7, v1

    iget v6, p0, LaJ/u;->b:I

    div-int/lit8 v6, v6, 0x2

    if-le v4, v6, :cond_aa

    :cond_76
    const/4 v4, 0x1

    :goto_77
    if-eqz v4, :cond_b5

    if-lez v7, :cond_ac

    iget v3, p0, LaJ/u;->b:I

    div-int/lit8 v3, v3, 0x2

    sub-int v3, v7, v3

    add-int/2addr v1, v3

    :goto_82
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    iget v4, v5, Landroid/graphics/Point;->x:I

    add-int/2addr v2, v4

    iput v2, v3, Landroid/graphics/Point;->x:I

    iget v2, v5, Landroid/graphics/Point;->y:I

    add-int/2addr v1, v2

    iput v1, v3, Landroid/graphics/Point;->y:I

    iget v1, v3, Landroid/graphics/Point;->x:I

    iget v2, v3, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p10

    invoke-virtual {p0, p2, v0, v1, v2}, LaJ/u;->a(LaJ/B;LaJ/Y;II)LaJ/B;

    move-result-object p2

    goto/16 :goto_6

    :cond_9d
    const/4 v1, 0x0

    goto :goto_3d

    :cond_9f
    const/4 v3, 0x0

    goto :goto_51

    :cond_a1
    iget v2, p0, LaJ/u;->a:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v6

    sub-int/2addr v2, v8

    sub-int v2, v2, p9

    goto :goto_63

    :cond_aa
    const/4 v4, 0x0

    goto :goto_77

    :cond_ac
    iget v1, p0, LaJ/u;->b:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v7

    sub-int/2addr v1, v9

    sub-int v1, v1, p8

    goto :goto_82

    :cond_b5
    move v1, v3

    goto :goto_82
.end method

.method public a(IIII)LaJ/Y;
    .registers 9

    invoke-virtual {p0}, LaJ/u;->f()LaJ/H;

    move-result-object v1

    invoke-virtual {v1}, LaJ/H;->a()LaJ/B;

    move-result-object v0

    invoke-virtual {p0, v0}, LaJ/u;->a(LaJ/B;)I

    move-result v0

    invoke-static {v0}, LaJ/Y;->b(I)LaJ/Y;

    move-result-object v0

    if-nez v0, :cond_33

    invoke-static {}, LaJ/Y;->e()I

    move-result v0

    invoke-static {v0}, LaJ/Y;->b(I)LaJ/Y;

    move-result-object v0

    :cond_1a
    :goto_1a
    return-object v0

    :cond_1b
    move-object v0, v1

    :goto_1c
    invoke-virtual {v0}, LaJ/Y;->d()LaJ/Y;

    move-result-object v1

    if-eqz v1, :cond_1a

    invoke-virtual {v2, v0}, LaJ/H;->a(LaJ/Y;)LaJ/H;

    move-result-object v2

    invoke-virtual {p0, p4, v2}, LaJ/u;->a(ILaJ/H;)I

    move-result v3

    if-gt p1, v3, :cond_1b

    invoke-virtual {p0, p3, v2}, LaJ/u;->b(ILaJ/H;)I

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

.method public abstract a(LaJ/B;LaJ/Y;)V
.end method

.method protected abstract a(LaJ/B;LaJ/Y;LaJ/B;Landroid/graphics/Point;)V
.end method

.method protected abstract a(LaJ/B;Landroid/graphics/Point;)V
.end method

.method public final a(LaJ/Y;)V
    .registers 3

    invoke-virtual {p0}, LaJ/u;->o()V

    invoke-virtual {p0}, LaJ/u;->c()LaJ/B;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, LaJ/u;->e(LaJ/B;LaJ/Y;)V

    return-void
.end method

.method protected abstract a(LaJ/Y;II)V
.end method

.method public a(LaJ/v;)V
    .registers 4

    iget-object v1, p0, LaJ/u;->c:Ljava/util/Set;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, LaJ/u;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public abstract a(Lt/y;)V
.end method

.method protected a(ZZZ)V
    .registers 6

    iget-object v1, p0, LaJ/u;->c:Ljava/util/Set;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, LaJ/u;->c:Ljava/util/Set;

    invoke-static {v0}, LK/bu;->a(Ljava/util/Collection;)LK/bu;

    move-result-object v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_1e

    invoke-virtual {v0}, LK/bu;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaJ/v;

    invoke-interface {v0, p1, p2, p3}, LaJ/v;->a(ZZZ)V

    goto :goto_e

    :catchall_1e
    move-exception v0

    :try_start_1f
    monitor-exit v1
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v0

    :cond_21
    return-void
.end method

.method public abstract a([LaJ/B;IIILaJ/Y;)V
.end method

.method public declared-synchronized a(LaJ/B;LaJ/B;I)Z
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, LaJ/u;->d:Landroid/graphics/Point;

    invoke-virtual {p0, p1, v0}, LaJ/u;->a(LaJ/B;Landroid/graphics/Point;)V

    iget-object v0, p0, LaJ/u;->e:Landroid/graphics/Point;

    invoke-virtual {p0, p2, v0}, LaJ/u;->a(LaJ/B;Landroid/graphics/Point;)V

    iget-object v0, p0, LaJ/u;->d:Landroid/graphics/Point;

    iget-object v1, p0, LaJ/u;->e:Landroid/graphics/Point;

    invoke-static {v0, v1, p3}, Lah/r;->a(Landroid/graphics/Point;Landroid/graphics/Point;I)Z
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_15

    move-result v0

    monitor-exit p0

    return v0

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Z)Z
    .registers 4

    iget v0, p0, LaJ/u;->a:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, LaJ/u;->b:I

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, p1, v0, v1}, LaJ/u;->a(ZII)Z

    move-result v0

    return v0
.end method

.method public final a(ZII)Z
    .registers 7

    iget-object v0, p0, LaJ/u;->f:LaJ/Y;

    if-nez v0, :cond_a

    invoke-virtual {p0}, LaJ/u;->d()LaJ/Y;

    move-result-object v0

    iput-object v0, p0, LaJ/u;->f:LaJ/Y;

    :cond_a
    if-eqz p1, :cond_22

    iget-object v0, p0, LaJ/u;->f:LaJ/Y;

    invoke-virtual {v0}, LaJ/Y;->d()LaJ/Y;

    move-result-object v0

    :goto_12
    if-eqz v0, :cond_20

    invoke-virtual {v0}, LaJ/Y;->a()I

    move-result v1

    iget-object v2, p0, LaJ/u;->f:LaJ/Y;

    invoke-virtual {v2}, LaJ/Y;->a()I

    move-result v2

    if-ne v1, v2, :cond_29

    :cond_20
    const/4 v0, 0x0

    :goto_21
    return v0

    :cond_22
    iget-object v0, p0, LaJ/u;->f:LaJ/Y;

    invoke-virtual {v0}, LaJ/Y;->c()LaJ/Y;

    move-result-object v0

    goto :goto_12

    :cond_29
    invoke-virtual {p0, v0, p2, p3}, LaJ/u;->a(LaJ/Y;II)V

    iput-object v0, p0, LaJ/u;->f:LaJ/Y;

    const/4 v0, 0x1

    goto :goto_21
.end method

.method public abstract b()I
.end method

.method public b(ILaJ/H;)I
    .registers 6

    invoke-virtual {p0, p2}, LaJ/u;->b(LaJ/H;)I

    move-result v0

    int-to-float v1, p1

    invoke-static {}, Lcom/google/googlenav/ui/bw;->d()Lcom/google/googlenav/ui/bw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/ui/bw;->O()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    int-to-float v2, v0

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public abstract b(LaJ/H;)I
.end method

.method public b(II)LaJ/B;
    .registers 5

    invoke-virtual {p0}, LaJ/u;->c()LaJ/B;

    move-result-object v0

    invoke-virtual {p0}, LaJ/u;->d()LaJ/Y;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p1, p2}, LaJ/u;->a(LaJ/B;LaJ/Y;II)LaJ/B;

    move-result-object v0

    return-object v0
.end method

.method public final b(LaJ/B;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, LaJ/u;->b(LaJ/B;LaJ/Y;)V

    return-void
.end method

.method protected abstract b(LaJ/B;LaJ/Y;)V
.end method

.method public b(LaJ/v;)V
    .registers 4

    iget-object v1, p0, LaJ/u;->c:Ljava/util/Set;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, LaJ/u;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public abstract c()LaJ/B;
.end method

.method public c(II)V
    .registers 3

    iput p1, p0, LaJ/u;->a:I

    iput p2, p0, LaJ/u;->b:I

    return-void
.end method

.method public final c(LaJ/B;)V
    .registers 3

    invoke-virtual {p0}, LaJ/u;->d()LaJ/Y;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, LaJ/u;->e(LaJ/B;LaJ/Y;)V

    return-void
.end method

.method protected abstract c(LaJ/B;LaJ/Y;)V
.end method

.method public abstract d()LaJ/Y;
.end method

.method public final d(II)V
    .registers 5

    const/4 v0, 0x0

    invoke-static {}, Lcom/google/googlenav/actionbar/a;->a()Lcom/google/googlenav/actionbar/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/actionbar/a;->h()I

    move-result v1

    invoke-virtual {p0, p1, p2, v0, v1}, LaJ/u;->a(IIII)LaJ/Y;

    move-result-object v0

    invoke-virtual {p0, v0}, LaJ/u;->a(LaJ/Y;)V

    return-void
.end method

.method public final d(LaJ/B;LaJ/Y;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, LaJ/u;->b(LaJ/B;LaJ/Y;)V

    return-void
.end method

.method public d(LaJ/B;)Z
    .registers 5

    invoke-virtual {p0, p1}, LaJ/u;->f(LaJ/B;)Landroid/graphics/Point;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Point;->x:I

    if-ltz v1, :cond_1a

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, p0, LaJ/u;->a:I

    if-ge v1, v2, :cond_1a

    iget v1, v0, Landroid/graphics/Point;->y:I

    if-ltz v1, :cond_1a

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v1, p0, LaJ/u;->b:I

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

.method public final e(LaJ/B;LaJ/Y;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, LaJ/u;->c(LaJ/B;LaJ/Y;)V

    return-void
.end method

.method public e(LaJ/B;)Z
    .registers 5

    invoke-virtual {p0, p1}, LaJ/u;->f(LaJ/B;)Landroid/graphics/Point;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, p0, LaJ/u;->a:I

    neg-int v2, v2

    if-lt v1, v2, :cond_24

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, p0, LaJ/u;->a:I

    mul-int/lit8 v2, v2, 0x2

    if-ge v1, v2, :cond_24

    iget v1, v0, Landroid/graphics/Point;->y:I

    iget v2, p0, LaJ/u;->b:I

    neg-int v2, v2

    if-lt v1, v2, :cond_24

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v1, p0, LaJ/u;->b:I

    mul-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_24

    const/4 v0, 0x1

    :goto_23
    return v0

    :cond_24
    const/4 v0, 0x0

    goto :goto_23
.end method

.method public abstract f()LaJ/H;
.end method

.method public f(LaJ/B;)Landroid/graphics/Point;
    .registers 3

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p0, p1, v0}, LaJ/u;->a(LaJ/B;Landroid/graphics/Point;)V

    return-object v0
.end method

.method public abstract i()Z
.end method

.method public abstract j()Z
.end method

.method public abstract k()Z
.end method

.method protected l()V
    .registers 3

    iget-object v1, p0, LaJ/u;->c:Ljava/util/Set;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, LaJ/u;->c:Ljava/util/Set;

    invoke-static {v0}, LK/bu;->a(Ljava/util/Collection;)LK/bu;

    move-result-object v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_1e

    invoke-virtual {v0}, LK/bu;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaJ/v;

    invoke-interface {v0}, LaJ/v;->i()V

    goto :goto_e

    :catchall_1e
    move-exception v0

    :try_start_1f
    monitor-exit v1
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v0

    :cond_21
    return-void
.end method

.method public m()I
    .registers 2

    iget v0, p0, LaJ/u;->a:I

    return v0
.end method

.method public n()Lam/b;
    .registers 5

    invoke-virtual {p0}, LaJ/u;->c()LaJ/B;

    move-result-object v0

    invoke-virtual {p0}, LaJ/u;->a()I

    move-result v1

    invoke-virtual {p0}, LaJ/u;->b()I

    move-result v2

    invoke-virtual {p0}, LaJ/u;->d()LaJ/Y;

    move-result-object v3

    invoke-virtual {v3}, LaJ/Y;->a()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, LaJ/C;->a(LaJ/B;III)Lam/b;

    move-result-object v0

    return-object v0
.end method

.method public final o()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, LaJ/u;->f:LaJ/Y;

    return-void
.end method
