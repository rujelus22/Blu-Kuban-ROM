.class public LaZ/a;
.super Lcom/google/android/maps/driveabout/vector/aE;


# instance fields
.field private a:Landroid/content/Context;

.field private final b:Lcom/google/googlenav/ui/aR;

.field private c:I

.field private d:Lt/P;

.field private e:Lt/P;

.field private f:Ljava/util/List;

.field private g:F

.field private h:Lcom/google/android/maps/driveabout/vector/aE;

.field private i:Lt/L;

.field private j:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/googlenav/ui/aR;)V
    .registers 4

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/aE;-><init>()V

    new-instance v0, Lt/L;

    invoke-direct {v0}, Lt/L;-><init>()V

    iput-object v0, p0, LaZ/a;->i:Lt/L;

    iput-object p1, p0, LaZ/a;->a:Landroid/content/Context;

    iput-object p2, p0, LaZ/a;->b:Lcom/google/googlenav/ui/aR;

    return-void
.end method

.method private a(Lcom/google/googlenav/ui/aQ;)Ljava/util/List;
    .registers 12

    const/4 v2, 0x0

    invoke-interface {p1}, Lcom/google/googlenav/ui/aQ;->n()[[LaJ/B;

    move-result-object v4

    if-nez v4, :cond_c

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v0

    :cond_b
    return-object v0

    :cond_c
    array-length v0, v4

    invoke-static {v0}, LK/bR;->b(I)Ljava/util/ArrayList;

    move-result-object v0

    array-length v5, v4

    move v3, v2

    :goto_13
    if-ge v3, v5, :cond_b

    aget-object v6, v4, v3

    new-instance v7, Lt/R;

    array-length v1, v6

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v7, v1}, Lt/R;-><init>(I)V

    array-length v8, v6

    move v1, v2

    :goto_21
    if-ge v1, v8, :cond_2f

    aget-object v9, v6, v1

    invoke-static {v9}, Lz/f;->a(LaJ/B;)Lt/L;

    move-result-object v9

    invoke-virtual {v7, v9}, Lt/R;->a(Lt/L;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    :cond_2f
    aget-object v1, v6, v2

    invoke-static {v1}, Lz/f;->a(LaJ/B;)Lt/L;

    move-result-object v1

    invoke-virtual {v7, v1}, Lt/R;->a(Lt/L;)Z

    invoke-virtual {v7}, Lt/R;->d()Lt/P;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_13
.end method

.method private a(Lcom/google/googlenav/ui/aQ;Z)Lt/P;
    .registers 10

    const/4 v1, 0x0

    invoke-interface {p1}, Lcom/google/googlenav/ui/aQ;->j()[LaJ/B;

    move-result-object v2

    new-instance v3, Lt/R;

    array-length v0, v2

    invoke-direct {v3, v0}, Lt/R;-><init>(I)V

    new-instance v4, Lt/L;

    invoke-direct {v4}, Lt/L;-><init>()V

    array-length v5, v2

    move v0, v1

    :goto_12
    if-ge v0, v5, :cond_1f

    aget-object v6, v2, v0

    invoke-static {v6, v4}, Lz/f;->a(LaJ/B;Lt/L;)V

    invoke-virtual {v3, v4}, Lt/R;->a(Lt/L;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_1f
    if-eqz p2, :cond_29

    aget-object v0, v2, v1

    invoke-static {v0, v4}, Lz/f;->a(LaJ/B;Lt/L;)V

    invoke-virtual {v3, v4}, Lt/R;->a(Lt/L;)Z

    :cond_29
    invoke-virtual {v3}, Lt/R;->d()Lt/P;

    move-result-object v0

    return-object v0
.end method

.method private b(Lcom/google/googlenav/ui/aQ;)I
    .registers 3

    iget v0, p0, LaZ/a;->g:F

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, LaJ/Y;->b(I)LaJ/Y;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/googlenav/ui/aQ;->a(LaJ/Y;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/t;Lcom/google/android/maps/driveabout/vector/J;)V
    .registers 5

    invoke-virtual {p0}, LaZ/a;->e()V

    iget-object v0, p0, LaZ/a;->h:Lcom/google/android/maps/driveabout/vector/aE;

    if-eqz v0, :cond_c

    iget-object v0, p0, LaZ/a;->h:Lcom/google/android/maps/driveabout/vector/aE;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/maps/driveabout/vector/aE;->a(Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/t;Lcom/google/android/maps/driveabout/vector/J;)V

    :cond_c
    return-void
.end method

.method public a_(Lcom/google/android/maps/driveabout/vector/t;)Z
    .registers 4

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/t;->k()F

    move-result v0

    iget v1, p0, LaZ/a;->g:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_29

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/t;->k()F

    move-result v0

    iput v0, p0, LaZ/a;->g:F

    iget-object v0, p0, LaZ/a;->b:Lcom/google/googlenav/ui/aR;

    instance-of v0, v0, Lcom/google/googlenav/ui/aP;

    if-nez v0, :cond_29

    iget v1, p0, LaZ/a;->j:I

    iget-object v0, p0, LaZ/a;->b:Lcom/google/googlenav/ui/aR;

    check-cast v0, Lcom/google/googlenav/ui/aQ;

    invoke-direct {p0, v0}, LaZ/a;->b(Lcom/google/googlenav/ui/aQ;)I

    move-result v0

    iput v0, p0, LaZ/a;->j:I

    iget v0, p0, LaZ/a;->j:I

    if-eq v0, v1, :cond_29

    const/4 v0, 0x0

    iput-object v0, p0, LaZ/a;->h:Lcom/google/android/maps/driveabout/vector/aE;

    :cond_29
    invoke-virtual {p0}, LaZ/a;->e()V

    iget-object v0, p0, LaZ/a;->h:Lcom/google/android/maps/driveabout/vector/aE;

    if-eqz v0, :cond_35

    iget-object v0, p0, LaZ/a;->h:Lcom/google/android/maps/driveabout/vector/aE;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/aE;->a_(Lcom/google/android/maps/driveabout/vector/t;)Z

    :cond_35
    invoke-super {p0, p1}, Lcom/google/android/maps/driveabout/vector/aE;->a_(Lcom/google/android/maps/driveabout/vector/t;)Z

    move-result v0

    return v0
.end method

.method e()V
    .registers 9

    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, LaZ/a;->h:Lcom/google/android/maps/driveabout/vector/aE;

    if-eqz v0, :cond_12

    iget-object v0, p0, LaZ/a;->b:Lcom/google/googlenav/ui/aR;

    invoke-interface {v0}, Lcom/google/googlenav/ui/aR;->i()I

    move-result v0

    iget v2, p0, LaZ/a;->c:I

    if-ne v0, v2, :cond_12

    :goto_11
    return-void

    :cond_12
    iget-object v0, p0, LaZ/a;->b:Lcom/google/googlenav/ui/aR;

    instance-of v0, v0, Lcom/google/googlenav/ui/aP;

    if-eqz v0, :cond_7a

    iget-object v0, p0, LaZ/a;->b:Lcom/google/googlenav/ui/aR;

    check-cast v0, Lcom/google/googlenav/ui/aP;

    invoke-interface {v0}, Lcom/google/googlenav/ui/aP;->k()I

    move-result v3

    invoke-interface {v0}, Lcom/google/googlenav/ui/aP;->m()I

    move-result v4

    invoke-interface {v0}, Lcom/google/googlenav/ui/aP;->z()LaJ/B;

    move-result-object v7

    invoke-interface {v0}, Lcom/google/googlenav/ui/aP;->y()I

    move-result v2

    invoke-interface {v0}, Lcom/google/googlenav/ui/aP;->a()Lt/y;

    move-result-object v0

    if-nez v0, :cond_65

    move-object v5, v6

    :goto_33
    if-eqz v7, :cond_38

    const/4 v0, -0x1

    if-ne v3, v0, :cond_6a

    :cond_38
    iget-object v0, p0, LaZ/a;->i:Lt/L;

    invoke-virtual {v0, v1, v1}, Lt/L;->d(II)V

    move v2, v1

    move v4, v1

    move v3, v1

    :goto_40
    iget-object v0, p0, LaZ/a;->h:Lcom/google/android/maps/driveabout/vector/aE;

    if-eqz v0, :cond_70

    iget-object v0, p0, LaZ/a;->h:Lcom/google/android/maps/driveabout/vector/aE;

    instance-of v0, v0, Lcom/google/android/maps/driveabout/vector/a;

    if-eqz v0, :cond_70

    iget-object v0, p0, LaZ/a;->h:Lcom/google/android/maps/driveabout/vector/aE;

    check-cast v0, Lcom/google/android/maps/driveabout/vector/a;

    iget-object v1, p0, LaZ/a;->i:Lt/L;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/a;->a(Lt/L;I)V

    invoke-virtual {v0, v5}, Lcom/google/android/maps/driveabout/vector/a;->a(Lt/r;)V

    invoke-virtual {v0, v3}, Lcom/google/android/maps/driveabout/vector/a;->a(I)V

    invoke-virtual {v0, v4}, Lcom/google/android/maps/driveabout/vector/a;->b(I)V

    :goto_5c
    iget-object v0, p0, LaZ/a;->b:Lcom/google/googlenav/ui/aR;

    invoke-interface {v0}, Lcom/google/googlenav/ui/aR;->i()I

    move-result v0

    iput v0, p0, LaZ/a;->c:I

    goto :goto_11

    :cond_65
    invoke-virtual {v0}, Lt/y;->a()Lt/r;

    move-result-object v5

    goto :goto_33

    :cond_6a
    iget-object v0, p0, LaZ/a;->i:Lt/L;

    invoke-static {v7, v0}, Lz/f;->a(LaJ/B;Lt/L;)V

    goto :goto_40

    :cond_70
    new-instance v0, Lcom/google/android/maps/driveabout/vector/a;

    iget-object v1, p0, LaZ/a;->i:Lt/L;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/a;-><init>(Lt/L;IIILt/r;)V

    iput-object v0, p0, LaZ/a;->h:Lcom/google/android/maps/driveabout/vector/aE;

    goto :goto_5c

    :cond_7a
    iget-object v0, p0, LaZ/a;->b:Lcom/google/googlenav/ui/aR;

    move-object v5, v0

    check-cast v5, Lcom/google/googlenav/ui/aQ;

    invoke-interface {v5}, Lcom/google/googlenav/ui/aQ;->j()[LaJ/B;

    move-result-object v0

    array-length v0, v0

    if-gt v0, v3, :cond_89

    iput-object v6, p0, LaZ/a;->h:Lcom/google/android/maps/driveabout/vector/aE;

    goto :goto_5c

    :cond_89
    invoke-interface {v5}, Lcom/google/googlenav/ui/aQ;->l()Z

    move-result v0

    if-eqz v0, :cond_c0

    iget-object v0, p0, LaZ/a;->e:Lt/P;

    if-eqz v0, :cond_9d

    iget-object v0, p0, LaZ/a;->b:Lcom/google/googlenav/ui/aR;

    invoke-interface {v0}, Lcom/google/googlenav/ui/aR;->i()I

    move-result v0

    iget v1, p0, LaZ/a;->c:I

    if-eq v0, v1, :cond_a9

    :cond_9d
    invoke-direct {p0, v5, v3}, LaZ/a;->a(Lcom/google/googlenav/ui/aQ;Z)Lt/P;

    move-result-object v0

    iput-object v0, p0, LaZ/a;->e:Lt/P;

    invoke-direct {p0, v5}, LaZ/a;->a(Lcom/google/googlenav/ui/aQ;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, LaZ/a;->f:Ljava/util/List;

    :cond_a9
    new-instance v0, Lcom/google/android/maps/driveabout/vector/aL;

    iget-object v1, p0, LaZ/a;->e:Lt/P;

    iget-object v2, p0, LaZ/a;->f:Ljava/util/List;

    iget v3, p0, LaZ/a;->j:I

    int-to-float v3, v3

    invoke-interface {v5}, Lcom/google/googlenav/ui/aQ;->k()I

    move-result v4

    invoke-interface {v5}, Lcom/google/googlenav/ui/aQ;->m()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/aL;-><init>(Lt/P;Ljava/util/List;FII)V

    iput-object v0, p0, LaZ/a;->h:Lcom/google/android/maps/driveabout/vector/aE;

    goto :goto_5c

    :cond_c0
    iget-object v0, p0, LaZ/a;->d:Lt/P;

    if-eqz v0, :cond_ce

    iget-object v0, p0, LaZ/a;->b:Lcom/google/googlenav/ui/aR;

    invoke-interface {v0}, Lcom/google/googlenav/ui/aR;->i()I

    move-result v0

    iget v2, p0, LaZ/a;->c:I

    if-eq v0, v2, :cond_d4

    :cond_ce
    invoke-direct {p0, v5, v1}, LaZ/a;->a(Lcom/google/googlenav/ui/aQ;Z)Lt/P;

    move-result-object v0

    iput-object v0, p0, LaZ/a;->d:Lt/P;

    :cond_d4
    invoke-interface {v5}, Lcom/google/googlenav/ui/aQ;->c()Lt/y;

    move-result-object v0

    if-nez v0, :cond_ed

    move-object v0, v6

    :goto_db
    new-instance v1, Lcom/google/android/maps/driveabout/vector/Z;

    iget-object v2, p0, LaZ/a;->d:Lt/P;

    iget v3, p0, LaZ/a;->j:I

    int-to-float v3, v3

    invoke-interface {v5}, Lcom/google/googlenav/ui/aQ;->k()I

    move-result v4

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/google/android/maps/driveabout/vector/Z;-><init>(Lt/P;FILt/r;)V

    iput-object v1, p0, LaZ/a;->h:Lcom/google/android/maps/driveabout/vector/aE;

    goto/16 :goto_5c

    :cond_ed
    invoke-virtual {v0}, Lt/y;->a()Lt/r;

    move-result-object v0

    goto :goto_db
.end method

.method public s_()I
    .registers 2

    const v0, 0x26548

    return v0
.end method
