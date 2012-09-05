.class public Lbc/e;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lau/v;

.field private b:Ljava/util/List;


# direct methods
.method public constructor <init>(Lau/v;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbc/e;->a:Lau/v;

    return-void
.end method

.method private a(Lbc/g;)F
    .registers 5

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p1}, Lbc/g;->a()I

    move-result v2

    if-ge v0, v2, :cond_14

    invoke-virtual {p1, v0}, Lbc/g;->a(I)Lbc/h;

    move-result-object v2

    invoke-virtual {v2}, Lbc/h;->p()F

    move-result v2

    add-float/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_14
    return v1
.end method

.method private a(Lau/s;I)V
    .registers 7

    iget-object v0, p0, Lbc/e;->b:Ljava/util/List;

    new-instance v1, Lbc/g;

    new-instance v2, Lbc/p;

    iget-object v3, p0, Lbc/e;->a:Lau/v;

    invoke-direct {v2, v3, p1, p2}, Lbc/p;-><init>(Lau/v;Lau/s;I)V

    invoke-direct {v1, v2}, Lbc/g;-><init>(Lbc/h;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private a(Lau/s;ILjava/util/List;)V
    .registers 8

    iget-object v0, p0, Lbc/e;->b:Ljava/util/List;

    new-instance v1, Lbc/g;

    new-instance v2, Lbc/m;

    iget-object v3, p0, Lbc/e;->a:Lau/v;

    invoke-direct {v2, v3, p1, p2, p3}, Lbc/m;-><init>(Lau/v;Lau/s;ILjava/util/List;)V

    invoke-direct {v1, v2}, Lbc/g;-><init>(Lbc/h;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private a(Lau/s;Lau/s;ILK/H;)V
    .registers 14

    const/4 v6, 0x0

    new-instance v7, Lbc/g;

    new-instance v0, Lbc/j;

    iget-object v1, p0, Lbc/e;->a:Lau/v;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p4, v2}, LK/H;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lbc/j;-><init>(Lau/v;Lau/s;Lau/s;ILjava/util/List;)V

    invoke-direct {v7, v0}, Lbc/g;-><init>(Lbc/h;)V

    invoke-virtual {p2}, Lau/s;->O()[Lau/t;

    move-result-object v8

    :goto_1c
    array-length v0, v8

    if-ge v6, v0, :cond_44

    aget-object v2, v8, v6

    add-int/lit8 v0, v6, 0x1

    array-length v1, v8

    if-ge v0, v1, :cond_42

    add-int/lit8 v0, v6, 0x1

    aget-object v3, v8, v0

    :goto_2a
    new-instance v0, Lbc/r;

    add-int/lit8 v1, v6, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p4, v1}, LK/H;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    move-object v1, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lbc/r;-><init>(Lau/s;Lau/t;Lau/t;ILjava/util/List;)V

    invoke-virtual {v7, v0}, Lbc/g;->a(Lbc/h;)V

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_1c

    :cond_42
    const/4 v3, 0x0

    goto :goto_2a

    :cond_44
    iget-object v0, p0, Lbc/e;->b:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private a(Lau/s;Lau/s;ILjava/util/List;)V
    .registers 13

    iget-object v6, p0, Lbc/e;->b:Ljava/util/List;

    new-instance v7, Lbc/g;

    new-instance v0, Lbc/l;

    iget-object v1, p0, Lbc/e;->a:Lau/v;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lbc/l;-><init>(Lau/v;Lau/s;Lau/s;ILjava/util/List;)V

    invoke-direct {v7, v0}, Lbc/g;-><init>(Lbc/h;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private b()V
    .registers 8

    const/4 v2, 0x0

    move v1, v2

    :goto_2
    iget-object v0, p0, Lbc/e;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_45

    iget-object v0, p0, Lbc/e;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbc/g;

    invoke-direct {p0, v0}, Lbc/e;->a(Lbc/g;)F

    move-result v5

    const/4 v0, 0x0

    move v3, v2

    move v4, v0

    :goto_19
    iget-object v0, p0, Lbc/e;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbc/g;

    invoke-virtual {v0}, Lbc/g;->a()I

    move-result v0

    if-ge v3, v0, :cond_41

    iget-object v0, p0, Lbc/e;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbc/g;

    invoke-virtual {v0, v3}, Lbc/g;->a(I)Lbc/h;

    move-result-object v0

    sub-float v6, v5, v4

    invoke-virtual {v0, v6}, Lbc/h;->c(F)V

    invoke-virtual {v0}, Lbc/h;->p()F

    move-result v0

    add-float/2addr v4, v0

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_19

    :cond_41
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_45
    return-void
.end method

.method private b(Lau/s;I)V
    .registers 7

    iget-object v0, p0, Lbc/e;->b:Ljava/util/List;

    new-instance v1, Lbc/g;

    new-instance v2, Lbc/k;

    iget-object v3, p0, Lbc/e;->a:Lau/v;

    invoke-direct {v2, v3, p1, p2}, Lbc/k;-><init>(Lau/v;Lau/s;I)V

    invoke-direct {v1, v2}, Lbc/g;-><init>(Lbc/h;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private b(Lau/s;Lau/s;ILjava/util/List;)V
    .registers 13

    iget-object v6, p0, Lbc/e;->b:Ljava/util/List;

    new-instance v7, Lbc/g;

    new-instance v0, Lbc/o;

    iget-object v1, p0, Lbc/e;->a:Lau/v;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lbc/o;-><init>(Lau/v;Lau/s;Lau/s;ILjava/util/List;)V

    invoke-direct {v7, v0}, Lbc/g;-><init>(Lbc/h;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private b(Lbc/g;)V
    .registers 7

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lbc/g;->a(I)Lbc/h;

    move-result-object v1

    invoke-virtual {v1}, Lbc/h;->b()Lbc/q;

    move-result-object v2

    sget-object v3, Lbc/q;->b:Lbc/q;

    if-ne v2, v3, :cond_3d

    invoke-virtual {v1}, Lbc/h;->a()Lau/s;

    move-result-object v1

    invoke-virtual {v1}, Lau/s;->v()I

    move-result v1

    invoke-direct {p0, p1}, Lbc/e;->a(Lbc/g;)F

    move-result v2

    :goto_19
    invoke-virtual {p1}, Lbc/g;->a()I

    move-result v3

    if-ge v0, v3, :cond_3d

    invoke-virtual {p1, v0}, Lbc/g;->a(I)Lbc/h;

    move-result-object v3

    invoke-virtual {v3}, Lbc/h;->n()Z

    move-result v4

    if-nez v4, :cond_3a

    if-lez v1, :cond_3a

    int-to-float v4, v1

    invoke-virtual {v3}, Lbc/h;->p()F

    move-result v3

    mul-float/2addr v3, v4

    div-float/2addr v3, v2

    float-to-int v3, v3

    invoke-virtual {p1, v0}, Lbc/g;->a(I)Lbc/h;

    move-result-object v4

    invoke-virtual {v4, v3}, Lbc/h;->a(I)V

    :cond_3a
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :cond_3d
    return-void
.end method

.method private c(Lbc/g;)I
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    invoke-virtual {p1}, Lbc/g;->a()I

    move-result v2

    if-ge v0, v2, :cond_14

    invoke-virtual {p1, v0}, Lbc/g;->a(I)Lbc/h;

    move-result-object v2

    invoke-virtual {v2}, Lbc/h;->o()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_14
    return v1
.end method

.method private c()V
    .registers 10

    const/4 v2, 0x0

    invoke-direct {p0}, Lbc/e;->e()V

    invoke-direct {p0}, Lbc/e;->d()I

    move-result v7

    move v1, v2

    move v3, v2

    :goto_a
    iget-object v0, p0, Lbc/e;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_56

    iget-object v0, p0, Lbc/e;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbc/g;

    invoke-direct {p0, v0}, Lbc/e;->c(Lbc/g;)I

    move-result v8

    move v4, v2

    move v5, v2

    :goto_20
    iget-object v0, p0, Lbc/e;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbc/g;

    invoke-virtual {v0}, Lbc/g;->a()I

    move-result v0

    if-ge v4, v0, :cond_52

    iget-object v0, p0, Lbc/e;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbc/g;

    invoke-virtual {v0, v4}, Lbc/g;->a(I)Lbc/h;

    move-result-object v0

    sub-int v6, v8, v5

    invoke-virtual {v0, v6}, Lbc/h;->e(I)V

    sub-int v6, v7, v3

    invoke-virtual {v0, v6}, Lbc/h;->f(I)V

    invoke-virtual {v0}, Lbc/h;->o()I

    move-result v0

    add-int v6, v3, v0

    add-int v3, v5, v0

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move v5, v3

    move v3, v6

    goto :goto_20

    :cond_52
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_a

    :cond_56
    return-void
.end method

.method private d()I
    .registers 4

    const/4 v0, 0x0

    move v1, v0

    move v2, v0

    :goto_3
    iget-object v0, p0, Lbc/e;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1c

    iget-object v0, p0, Lbc/e;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbc/g;

    invoke-direct {p0, v0}, Lbc/e;->c(Lbc/g;)I

    move-result v0

    add-int/2addr v2, v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_1c
    return v2
.end method

.method private e()V
    .registers 3

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Lbc/e;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_27

    iget-object v0, p0, Lbc/e;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbc/g;

    invoke-virtual {v0}, Lbc/g;->b()Z

    move-result v0

    if-nez v0, :cond_23

    iget-object v0, p0, Lbc/e;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbc/g;

    invoke-direct {p0, v0}, Lbc/e;->b(Lbc/g;)V

    :cond_23
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_27
    return-void
.end method

.method private f()V
    .registers 9

    const/4 v1, 0x0

    const/4 v7, 0x0

    new-instance v2, Lbc/f;

    iget-object v0, p0, Lbc/e;->a:Lau/v;

    invoke-direct {v2, v0}, Lbc/f;-><init>(Lau/b;)V

    invoke-virtual {v2}, Lbc/f;->j()Z

    move-result v0

    if-nez v0, :cond_a9

    invoke-virtual {v2}, Lbc/f;->d()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_be

    invoke-virtual {v2}, Lbc/f;->b()Lau/s;

    move-result-object v0

    invoke-virtual {v2}, Lbc/f;->a()Lau/s;

    move-result-object v3

    invoke-virtual {v2}, Lbc/f;->f()I

    move-result v4

    invoke-virtual {v2}, Lbc/f;->i()LK/H;

    move-result-object v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, LK/H;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {p0, v0, v3, v4, v5}, Lbc/e;->a(Lau/s;Lau/s;ILjava/util/List;)V

    invoke-virtual {v2}, Lbc/f;->h()V

    :goto_34
    invoke-virtual {v2}, Lbc/f;->j()Z

    move-result v3

    if-nez v3, :cond_4c

    invoke-virtual {v2}, Lbc/f;->b()Lau/s;

    move-result-object v3

    invoke-virtual {v2}, Lbc/f;->f()I

    move-result v4

    invoke-virtual {v2}, Lbc/f;->i()LK/H;

    move-result-object v5

    invoke-direct {p0, v0, v3, v4, v5}, Lbc/e;->a(Lau/s;Lau/s;ILK/H;)V

    invoke-virtual {v2}, Lbc/f;->h()V

    :cond_4c
    :goto_4c
    invoke-virtual {v2}, Lbc/f;->j()Z

    move-result v0

    if-nez v0, :cond_96

    invoke-virtual {v2}, Lbc/f;->e()Z

    move-result v0

    if-eqz v0, :cond_73

    invoke-virtual {v2}, Lbc/f;->c()Lau/s;

    move-result-object v0

    invoke-virtual {v2}, Lbc/f;->f()I

    move-result v3

    invoke-virtual {v2}, Lbc/f;->i()LK/H;

    move-result-object v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, LK/H;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {p0, v0, v3, v4}, Lbc/e;->a(Lau/s;ILjava/util/List;)V

    :goto_6f
    invoke-virtual {v2}, Lbc/f;->h()V

    goto :goto_4c

    :cond_73
    invoke-virtual {v2}, Lbc/f;->c()Lau/s;

    move-result-object v0

    invoke-virtual {v2}, Lbc/f;->b()Lau/s;

    move-result-object v3

    invoke-virtual {v2}, Lbc/f;->g()I

    move-result v4

    invoke-direct {p0, v0, v3, v4, v1}, Lbc/e;->b(Lau/s;Lau/s;ILjava/util/List;)V

    invoke-virtual {v2}, Lbc/f;->c()Lau/s;

    move-result-object v0

    invoke-virtual {v2}, Lbc/f;->b()Lau/s;

    move-result-object v3

    invoke-virtual {v2}, Lbc/f;->f()I

    move-result v4

    invoke-virtual {v2}, Lbc/f;->i()LK/H;

    move-result-object v5

    invoke-direct {p0, v0, v3, v4, v5}, Lbc/e;->a(Lau/s;Lau/s;ILK/H;)V

    goto :goto_6f

    :cond_96
    invoke-virtual {v2}, Lbc/f;->k()Lcom/google/googlenav/ui/view/android/rideabout/i;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/ui/view/android/rideabout/i;->b:Lcom/google/googlenav/ui/view/android/rideabout/i;

    if-ne v0, v1, :cond_aa

    invoke-virtual {v2}, Lbc/f;->c()Lau/s;

    move-result-object v0

    invoke-virtual {v2}, Lbc/f;->f()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lbc/e;->a(Lau/s;I)V

    :cond_a9
    :goto_a9
    return-void

    :cond_aa
    invoke-virtual {v2}, Lbc/f;->k()Lcom/google/googlenav/ui/view/android/rideabout/i;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/ui/view/android/rideabout/i;->c:Lcom/google/googlenav/ui/view/android/rideabout/i;

    if-ne v0, v1, :cond_a9

    invoke-virtual {v2}, Lbc/f;->c()Lau/s;

    move-result-object v0

    invoke-virtual {v2}, Lbc/f;->f()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lbc/e;->b(Lau/s;I)V

    goto :goto_a9

    :cond_be
    move-object v0, v1

    goto/16 :goto_34
.end method


# virtual methods
.method public a()Lbc/d;
    .registers 3

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lbc/e;->b:Ljava/util/List;

    invoke-direct {p0}, Lbc/e;->f()V

    invoke-direct {p0}, Lbc/e;->c()V

    invoke-direct {p0}, Lbc/e;->b()V

    new-instance v0, Lbc/d;

    iget-object v1, p0, Lbc/e;->b:Ljava/util/List;

    invoke-direct {v0, v1}, Lbc/d;-><init>(Ljava/util/List;)V

    return-object v0
.end method
