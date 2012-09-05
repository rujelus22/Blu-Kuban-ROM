.class public Lcom/google/android/maps/driveabout/vector/aL;
.super Lcom/google/android/maps/driveabout/vector/aE;


# instance fields
.field private final a:Lt/P;

.field private b:Lt/P;

.field private c:Lt/P;

.field private d:Ljava/util/List;

.field private e:Ljava/util/List;

.field private f:Ljava/util/List;

.field private final g:Ljava/util/List;

.field private h:Lt/V;

.field private i:F

.field private j:F

.field private final k:Lcom/google/android/maps/driveabout/vector/di;

.field private final l:Lcom/google/android/maps/driveabout/vector/bu;

.field private final m:F

.field private n:I

.field private o:I

.field private p:Z


# direct methods
.method public constructor <init>(Lt/P;Ljava/util/List;FII)V
    .registers 8

    const/16 v1, 0x20

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/aE;-><init>()V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/aL;->a:Lt/P;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/vector/aL;->d:Ljava/util/List;

    iput p3, p0, Lcom/google/android/maps/driveabout/vector/aL;->m:F

    iput p4, p0, Lcom/google/android/maps/driveabout/vector/aL;->n:I

    iput p5, p0, Lcom/google/android/maps/driveabout/vector/aL;->o:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aL;->g:Ljava/util/List;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/di;

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/di;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aL;->k:Lcom/google/android/maps/driveabout/vector/di;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/bu;

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/bu;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aL;->l:Lcom/google/android/maps/driveabout/vector/bu;

    return-void
.end method

.method private static a(I)I
    .registers 3

    const/4 v0, 0x2

    rsub-int/lit8 v1, p0, 0x1e

    shl-int/2addr v0, v1

    div-int/lit16 v0, v0, 0x100

    return v0
.end method

.method private a(F)Lt/P;
    .registers 3

    const/high16 v0, 0x4120

    cmpl-float v0, p1, v0

    if-lez v0, :cond_9

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aL;->a:Lt/P;

    :goto_8
    return-object v0

    :cond_9
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/aL;->e()V

    const/high16 v0, 0x40c0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_15

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aL;->b:Lt/P;

    goto :goto_8

    :cond_15
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aL;->c:Lt/P;

    goto :goto_8
.end method

.method private a(Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/t;)V
    .registers 6

    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aL;->h:Lt/V;

    invoke-virtual {v1}, Lt/V;->d()Lt/L;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aL;->h:Lt/V;

    invoke-virtual {v2}, Lt/V;->g()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v0, p2, v1, v2}, Lcom/google/android/maps/driveabout/vector/cN;->a(Ljavax/microedition/khronos/opengles/GL10;Lcom/google/android/maps/driveabout/vector/t;Lt/L;F)V

    const/4 v1, 0x1

    const/16 v2, 0x303

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aL;->k:Lcom/google/android/maps/driveabout/vector/di;

    invoke-virtual {v1, p1}, Lcom/google/android/maps/driveabout/vector/di;->d(Lcom/google/android/maps/driveabout/vector/aT;)V

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/aL;->n:I

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/vector/C;->a(Ljavax/microedition/khronos/opengles/GL10;I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aL;->l:Lcom/google/android/maps/driveabout/vector/bu;

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Lcom/google/android/maps/driveabout/vector/bu;->a(Lcom/google/android/maps/driveabout/vector/aT;I)V

    return-void
.end method

.method private a(Lt/P;Lcom/google/android/maps/driveabout/vector/t;)V
    .registers 13

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aL;->h:Lt/V;

    invoke-virtual {v0}, Lt/V;->d()Lt/L;

    move-result-object v4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aL;->h:Lt/V;

    invoke-virtual {v0}, Lt/V;->g()I

    move-result v5

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/t;->r()F

    move-result v0

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/aL;->m:F

    mul-float v2, v0, v1

    const/4 v3, 0x1

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/bb;->a()Lcom/google/android/maps/driveabout/vector/bb;

    move-result-object v0

    const/high16 v6, 0x3f80

    iget-object v7, p0, Lcom/google/android/maps/driveabout/vector/aL;->k:Lcom/google/android/maps/driveabout/vector/di;

    iget-object v8, p0, Lcom/google/android/maps/driveabout/vector/aL;->l:Lcom/google/android/maps/driveabout/vector/bu;

    const/4 v9, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/maps/driveabout/vector/bb;->a(Lt/P;FZLt/L;IFLcom/google/android/maps/driveabout/vector/di;Lcom/google/android/maps/driveabout/vector/bu;Lcom/google/android/maps/driveabout/vector/cp;)V

    return-void
.end method

.method private b(F)Ljava/util/List;
    .registers 3

    const/high16 v0, 0x4120

    cmpl-float v0, p1, v0

    if-lez v0, :cond_9

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aL;->d:Ljava/util/List;

    :goto_8
    return-object v0

    :cond_9
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/aL;->e()V

    const/high16 v0, 0x40c0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_15

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aL;->e:Ljava/util/List;

    goto :goto_8

    :cond_15
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aL;->f:Ljava/util/List;

    goto :goto_8
.end method

.method private b(Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/t;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aL;->k:Lcom/google/android/maps/driveabout/vector/di;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/di;->a(Lcom/google/android/maps/driveabout/vector/aT;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aL;->l:Lcom/google/android/maps/driveabout/vector/bu;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/bu;->a(Lcom/google/android/maps/driveabout/vector/aT;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aL;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/P;

    invoke-direct {p0, v0, p2}, Lcom/google/android/maps/driveabout/vector/aL;->a(Lt/P;Lcom/google/android/maps/driveabout/vector/t;)V

    goto :goto_10

    :cond_20
    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/t;->h()F

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/aL;->j:F

    return-void
.end method

.method private b(Lcom/google/android/maps/driveabout/vector/t;)Z
    .registers 7

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/high16 v4, 0x3fa0

    iget-boolean v2, p0, Lcom/google/android/maps/driveabout/vector/aL;->p:Z

    if-eqz v2, :cond_b

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/aL;->p:Z

    :goto_a
    return v1

    :cond_b
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/t;->h()F

    move-result v2

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/aL;->j:F

    mul-float/2addr v3, v4

    cmpl-float v3, v2, v3

    if-gtz v3, :cond_1d

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/aL;->j:F

    div-float/2addr v3, v4

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1e

    :cond_1d
    move v0, v1

    :cond_1e
    move v1, v0

    goto :goto_a
.end method

.method private c(Lcom/google/android/maps/driveabout/vector/t;)Z
    .registers 6

    const/high16 v3, 0x4000

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aL;->h:Lt/V;

    if-nez v1, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/t;->h()F

    move-result v1

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/aL;->i:F

    mul-float/2addr v2, v3

    cmpl-float v2, v1, v2

    if-gtz v2, :cond_7

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/aL;->i:F

    div-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_7

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aL;->h:Lt/V;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/t;->u()Lt/at;

    move-result-object v2

    invoke-virtual {v2}, Lt/at;->c()Lt/W;

    move-result-object v2

    invoke-virtual {v1, v2}, Lt/V;->b(Lt/W;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v0, 0x0

    goto :goto_7
.end method

.method private d(Lcom/google/android/maps/driveabout/vector/t;)V
    .registers 8

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/t;->u()Lt/at;

    move-result-object v0

    invoke-virtual {v0}, Lt/at;->b()Lt/V;

    move-result-object v0

    invoke-virtual {v0}, Lt/V;->g()I

    move-result v1

    invoke-virtual {v0}, Lt/V;->h()I

    move-result v2

    new-instance v3, Lt/L;

    mul-int/lit8 v1, v1, 0x4

    mul-int/lit8 v2, v2, 0x4

    invoke-direct {v3, v1, v2}, Lt/L;-><init>(II)V

    invoke-virtual {v0}, Lt/V;->d()Lt/L;

    move-result-object v1

    invoke-virtual {v1, v3}, Lt/L;->f(Lt/L;)Lt/L;

    move-result-object v1

    invoke-virtual {v0}, Lt/V;->e()Lt/L;

    move-result-object v0

    invoke-virtual {v0, v3}, Lt/L;->e(Lt/L;)Lt/L;

    move-result-object v0

    new-instance v2, Lt/V;

    invoke-direct {v2, v1, v0}, Lt/V;-><init>(Lt/L;Lt/L;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aL;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    new-instance v1, Lt/f;

    invoke-direct {v1, v2}, Lt/f;-><init>(Lt/W;)V

    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/aL;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/t;->k()F

    move-result v3

    invoke-direct {p0, v3}, Lcom/google/android/maps/driveabout/vector/aL;->a(F)Lt/P;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/t;->k()F

    move-result v3

    invoke-direct {p0, v3}, Lcom/google/android/maps/driveabout/vector/aL;->b(F)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_89

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/P;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v0, v4}, Lt/f;->a(Lt/P;Ljava/util/List;)V

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_77
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/P;

    iget-object v5, p0, Lcom/google/android/maps/driveabout/vector/aL;->g:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_77

    :cond_89
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/t;->k()F

    move-result v0

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/aL;->a(I)I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_96
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aL;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_b4

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/aL;->g:Ljava/util/List;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aL;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/P;

    int-to-float v5, v3

    invoke-virtual {v0, v5}, Lt/P;->b(F)Lt/P;

    move-result-object v0

    invoke-interface {v4, v1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_96

    :cond_b4
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/t;->h()F

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/aL;->i:F

    iput-object v2, p0, Lcom/google/android/maps/driveabout/vector/aL;->h:Lt/V;

    return-void
.end method

.method private e()V
    .registers 7

    const/16 v5, 0xa

    const/4 v4, 0x6

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aL;->b:Lt/P;

    if-nez v0, :cond_7d

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aL;->a:Lt/P;

    invoke-static {v5}, Lcom/google/android/maps/driveabout/vector/aL;->a(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lt/P;->b(F)Lt/P;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aL;->b:Lt/P;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aL;->b:Lt/P;

    invoke-static {v4}, Lcom/google/android/maps/driveabout/vector/aL;->a(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lt/P;->b(F)Lt/P;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aL;->c:Lt/P;

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aL;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aL;->e:Ljava/util/List;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aL;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_34
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/P;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aL;->e:Ljava/util/List;

    invoke-static {v5}, Lcom/google/android/maps/driveabout/vector/aL;->a(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Lt/P;->b(F)Lt/P;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_34

    :cond_4f
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aL;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aL;->f:Ljava/util/List;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aL;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_62
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/P;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aL;->f:Ljava/util/List;

    invoke-static {v4}, Lcom/google/android/maps/driveabout/vector/aL;->a(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Lt/P;->b(F)Lt/P;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_62

    :cond_7d
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/t;Lcom/google/android/maps/driveabout/vector/J;)V
    .registers 5

    invoke-interface {p3}, Lcom/google/android/maps/driveabout/vector/J;->b()I

    move-result v0

    if-nez v0, :cond_29

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aL;->h:Lt/V;

    if-nez v0, :cond_d

    invoke-direct {p0, p2}, Lcom/google/android/maps/driveabout/vector/aL;->d(Lcom/google/android/maps/driveabout/vector/t;)V

    :cond_d
    invoke-direct {p0, p2}, Lcom/google/android/maps/driveabout/vector/aL;->b(Lcom/google/android/maps/driveabout/vector/t;)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-direct {p0, p1, p2}, Lcom/google/android/maps/driveabout/vector/aL;->b(Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/t;)V

    :cond_16
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aL;->k:Lcom/google/android/maps/driveabout/vector/di;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/di;->b()I

    move-result v0

    if-lez v0, :cond_29

    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    invoke-direct {p0, p1, p2}, Lcom/google/android/maps/driveabout/vector/aL;->a(Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/t;)V

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    :cond_29
    return-void
.end method

.method public a_(Lcom/google/android/maps/driveabout/vector/t;)Z
    .registers 4

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/aL;->c(Lcom/google/android/maps/driveabout/vector/t;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/aL;->d(Lcom/google/android/maps/driveabout/vector/t;)V

    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/aL;->p:Z

    :cond_c
    return v1
.end method

.method public s_()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
