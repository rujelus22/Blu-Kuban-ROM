.class public Lcom/google/android/maps/driveabout/vector/aM;
.super Lcom/google/android/maps/driveabout/vector/aE;


# instance fields
.field private final a:Lcom/google/android/maps/driveabout/vector/aN;

.field private b:Lcom/google/android/maps/driveabout/vector/aN;

.field private c:Lcom/google/android/maps/driveabout/vector/aN;

.field private final d:Ljava/util/ArrayList;

.field private e:Lt/V;

.field private f:F

.field private g:F

.field private h:I

.field private final i:Lcom/google/android/maps/driveabout/vector/di;

.field private final j:Lcom/google/android/maps/driveabout/vector/bu;

.field private final k:Lcom/google/android/maps/driveabout/vector/cp;

.field private l:I

.field private final m:F

.field private final n:I

.field private o:Z

.field private p:Z


# direct methods
.method public constructor <init>(Lt/P;II[IF)V
    .registers 8

    const/16 v1, 0x20

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/aE;-><init>()V

    new-instance v0, Lcom/google/android/maps/driveabout/vector/aN;

    invoke-direct {v0, p1, p4}, Lcom/google/android/maps/driveabout/vector/aN;-><init>(Lt/P;[I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aM;->a:Lcom/google/android/maps/driveabout/vector/aN;

    iput p2, p0, Lcom/google/android/maps/driveabout/vector/aM;->h:I

    iput p5, p0, Lcom/google/android/maps/driveabout/vector/aM;->m:F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aM;->d:Ljava/util/ArrayList;

    iput p3, p0, Lcom/google/android/maps/driveabout/vector/aM;->n:I

    new-instance v0, Lcom/google/android/maps/driveabout/vector/di;

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/di;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aM;->i:Lcom/google/android/maps/driveabout/vector/di;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/cp;

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/cp;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aM;->k:Lcom/google/android/maps/driveabout/vector/cp;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/bu;

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/bu;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aM;->j:Lcom/google/android/maps/driveabout/vector/bu;

    const v0, 0x249f0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/aM;->l:I

    return-void
.end method

.method static a(Lcom/google/android/maps/driveabout/vector/aN;FI)Lcom/google/android/maps/driveabout/vector/aN;
    .registers 10

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aN;->a:Lt/P;

    invoke-virtual {v0, p1, p2}, Lt/P;->a(FI)[Z

    move-result-object v3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aN;->b:[I

    if-eqz v0, :cond_23

    move v0, v1

    :goto_d
    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    if-ge v0, v4, :cond_23

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/aN;->b:[I

    aget v4, v4, v0

    iget-object v5, p0, Lcom/google/android/maps/driveabout/vector/aN;->b:[I

    add-int/lit8 v6, v0, 0x1

    aget v5, v5, v6

    if-eq v4, v5, :cond_20

    aput-boolean v1, v3, v0

    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_23
    move v0, v2

    move v1, v2

    :goto_25
    array-length v4, v3

    if-ge v0, v4, :cond_31

    aget-boolean v4, v3, v0

    if-eqz v4, :cond_2e

    add-int/lit8 v1, v1, 0x1

    :cond_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    :cond_31
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aN;->a:Lt/P;

    invoke-virtual {v0}, Lt/P;->b()I

    move-result v0

    if-ne v1, v0, :cond_3a

    :goto_39
    return-object p0

    :cond_3a
    const/4 v0, 0x0

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/aN;->b:[I

    if-eqz v4, :cond_41

    new-array v0, v1, [I

    :cond_41
    mul-int/lit8 v1, v1, 0x3

    new-array v4, v1, [I

    new-instance v5, Lt/L;

    invoke-direct {v5}, Lt/L;-><init>()V

    move v1, v2

    :goto_4b
    array-length v6, v3

    if-ge v2, v6, :cond_67

    aget-boolean v6, v3, v2

    if-eqz v6, :cond_64

    iget-object v6, p0, Lcom/google/android/maps/driveabout/vector/aN;->a:Lt/P;

    invoke-virtual {v6, v2, v5}, Lt/P;->a(ILt/L;)V

    invoke-virtual {v5, v4, v1}, Lt/L;->a([II)V

    if-eqz v0, :cond_62

    iget-object v6, p0, Lcom/google/android/maps/driveabout/vector/aN;->b:[I

    aget v6, v6, v2

    aput v6, v0, v1

    :cond_62
    add-int/lit8 v1, v1, 0x1

    :cond_64
    add-int/lit8 v2, v2, 0x1

    goto :goto_4b

    :cond_67
    new-instance p0, Lcom/google/android/maps/driveabout/vector/aN;

    invoke-static {v4}, Lt/P;->a([I)Lt/P;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/google/android/maps/driveabout/vector/aN;-><init>(Lt/P;[I)V

    goto :goto_39
.end method

.method private a(Lcom/google/android/maps/driveabout/vector/aN;Lcom/google/android/maps/driveabout/vector/t;)V
    .registers 13

    const/4 v9, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aM;->e:Lt/V;

    invoke-virtual {v0}, Lt/V;->d()Lt/L;

    move-result-object v4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aM;->e:Lt/V;

    invoke-virtual {v0}, Lt/V;->g()I

    move-result v5

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/t;->r()F

    move-result v0

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/aM;->m:F

    mul-float v2, v0, v1

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/bb;->a()Lcom/google/android/maps/driveabout/vector/bb;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/maps/driveabout/vector/aN;->a:Lt/P;

    const/high16 v6, 0x3f80

    iget-object v7, p0, Lcom/google/android/maps/driveabout/vector/aM;->i:Lcom/google/android/maps/driveabout/vector/di;

    iget-object v8, p0, Lcom/google/android/maps/driveabout/vector/aM;->j:Lcom/google/android/maps/driveabout/vector/bu;

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/maps/driveabout/vector/bb;->a(Lt/P;FZLt/L;IFLcom/google/android/maps/driveabout/vector/di;Lcom/google/android/maps/driveabout/vector/bu;Lcom/google/android/maps/driveabout/vector/cp;)V

    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/aM;->o:Z

    if-eqz v1, :cond_3a

    iget-object v5, p1, Lcom/google/android/maps/driveabout/vector/aN;->b:[I

    :goto_2b
    iget-object v1, p1, Lcom/google/android/maps/driveabout/vector/aN;->a:Lt/P;

    invoke-virtual {v1}, Lt/P;->b()I

    move-result v2

    iget v4, p0, Lcom/google/android/maps/driveabout/vector/aM;->n:I

    iget-object v6, p0, Lcom/google/android/maps/driveabout/vector/aM;->k:Lcom/google/android/maps/driveabout/vector/cp;

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/maps/driveabout/vector/bb;->a(IZI[ILcom/google/android/maps/driveabout/vector/cp;)V

    return-void

    :cond_3a
    move-object v5, v9

    goto :goto_2b
.end method

.method private a(Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/t;)V
    .registers 7

    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aM;->e:Lt/V;

    invoke-virtual {v1}, Lt/V;->d()Lt/L;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aM;->e:Lt/V;

    invoke-virtual {v2}, Lt/V;->g()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v0, p2, v1, v2}, Lcom/google/android/maps/driveabout/vector/cN;->a(Ljavax/microedition/khronos/opengles/GL10;Lcom/google/android/maps/driveabout/vector/t;Lt/L;F)V

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aT;->o()V

    const/4 v1, 0x1

    const/16 v2, 0x303

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    const/16 v1, 0x2300

    const/16 v2, 0x2200

    const/16 v3, 0x1e01

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvx(III)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aM;->i:Lcom/google/android/maps/driveabout/vector/di;

    invoke-virtual {v1, p1}, Lcom/google/android/maps/driveabout/vector/di;->d(Lcom/google/android/maps/driveabout/vector/aT;)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aM;->k:Lcom/google/android/maps/driveabout/vector/cp;

    invoke-virtual {v1, p1}, Lcom/google/android/maps/driveabout/vector/cp;->d(Lcom/google/android/maps/driveabout/vector/aT;)V

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/aM;->h:I

    invoke-static {v1}, Lcom/google/android/maps/driveabout/vector/cy;->a(I)Lcom/google/android/maps/driveabout/vector/cw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/vector/cw;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aM;->j:Lcom/google/android/maps/driveabout/vector/bu;

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Lcom/google/android/maps/driveabout/vector/bu;->a(Lcom/google/android/maps/driveabout/vector/aT;I)V

    return-void
.end method

.method private b(Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/t;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aM;->i:Lcom/google/android/maps/driveabout/vector/di;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/di;->a(Lcom/google/android/maps/driveabout/vector/aT;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aM;->j:Lcom/google/android/maps/driveabout/vector/bu;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/bu;->a(Lcom/google/android/maps/driveabout/vector/aT;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aM;->k:Lcom/google/android/maps/driveabout/vector/cp;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cp;->a(Lcom/google/android/maps/driveabout/vector/aT;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_11
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aM;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_28

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aM;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/aN;

    invoke-direct {p0, v0, p2}, Lcom/google/android/maps/driveabout/vector/aM;->a(Lcom/google/android/maps/driveabout/vector/aN;Lcom/google/android/maps/driveabout/vector/t;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_11

    :cond_28
    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/t;->h()F

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/aM;->g:F

    return-void
.end method

.method private b(Lcom/google/android/maps/driveabout/vector/t;)Z
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/high16 v4, 0x3fa0

    monitor-enter p0

    :try_start_5
    iget-boolean v2, p0, Lcom/google/android/maps/driveabout/vector/aM;->p:Z

    if-eqz v2, :cond_e

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/aM;->p:Z

    monitor-exit p0

    :cond_d
    :goto_d
    return v0

    :cond_e
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_23

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/t;->h()F

    move-result v2

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/aM;->g:F

    mul-float/2addr v3, v4

    cmpl-float v3, v2, v3

    if-gtz v3, :cond_d

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/aM;->g:F

    div-float/2addr v3, v4

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_d

    move v0, v1

    goto :goto_d

    :catchall_23
    move-exception v0

    :try_start_24
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw v0
.end method

.method private c(Lcom/google/android/maps/driveabout/vector/t;)Z
    .registers 6

    const/high16 v3, 0x4000

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aM;->e:Lt/V;

    if-nez v1, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/t;->h()F

    move-result v1

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/aM;->f:F

    mul-float/2addr v2, v3

    cmpl-float v2, v1, v2

    if-gtz v2, :cond_7

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/aM;->f:F

    div-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_7

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aM;->e:Lt/V;

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

.method private static d(I)I
    .registers 3

    const/4 v0, 0x2

    rsub-int/lit8 v1, p0, 0x1e

    shl-int/2addr v0, v1

    div-int/lit16 v0, v0, 0x100

    return v0
.end method

.method private d(Lcom/google/android/maps/driveabout/vector/t;)V
    .registers 10

    const v7, 0x1fffffff

    const/high16 v6, -0x2000

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aM;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/t;->k()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/vector/aM;->a(F)Lcom/google/android/maps/driveabout/vector/aN;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/t;->u()Lt/at;

    move-result-object v1

    invoke-virtual {v1}, Lt/at;->b()Lt/V;

    move-result-object v1

    invoke-virtual {v1}, Lt/V;->g()I

    move-result v3

    invoke-virtual {v1}, Lt/V;->h()I

    move-result v4

    const v5, 0x71c71c7

    if-gt v3, v5, :cond_2a

    if-le v4, v5, :cond_69

    :cond_2a
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aM;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lt/V;

    new-instance v1, Lt/L;

    invoke-direct {v1, v6, v6}, Lt/L;-><init>(II)V

    new-instance v3, Lt/L;

    invoke-direct {v3, v7, v7}, Lt/L;-><init>(II)V

    invoke-direct {v0, v1, v3}, Lt/V;-><init>(Lt/L;Lt/L;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aM;->e:Lt/V;

    :cond_40
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/t;->k()F

    move-result v0

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/aM;->d(I)I

    move-result v1

    :goto_4b
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aM;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_f2

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/aM;->d:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aM;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/aN;

    int-to-float v4, v1

    const/4 v5, 0x1

    invoke-static {v0, v4, v5}, Lcom/google/android/maps/driveabout/vector/aM;->a(Lcom/google/android/maps/driveabout/vector/aN;FI)Lcom/google/android/maps/driveabout/vector/aN;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_4b

    :cond_69
    new-instance v5, Lt/L;

    mul-int/lit8 v3, v3, 0x4

    mul-int/lit8 v4, v4, 0x4

    invoke-direct {v5, v3, v4}, Lt/L;-><init>(II)V

    invoke-virtual {v1}, Lt/V;->d()Lt/L;

    move-result-object v3

    invoke-virtual {v3, v5}, Lt/L;->f(Lt/L;)Lt/L;

    move-result-object v3

    invoke-virtual {v1}, Lt/V;->e()Lt/L;

    move-result-object v1

    invoke-virtual {v1, v5}, Lt/L;->e(Lt/L;)Lt/L;

    move-result-object v1

    invoke-virtual {v3, v3}, Lt/L;->j(Lt/L;)V

    invoke-virtual {v1, v1}, Lt/L;->j(Lt/L;)V

    new-instance v4, Lt/V;

    invoke-direct {v4, v3, v1}, Lt/V;-><init>(Lt/L;Lt/L;)V

    iput-object v4, p0, Lcom/google/android/maps/driveabout/vector/aM;->e:Lt/V;

    new-instance v1, Lt/f;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/aM;->e:Lt/V;

    invoke-direct {v1, v3}, Lt/f;-><init>(Lt/W;)V

    iget-object v3, v0, Lcom/google/android/maps/driveabout/vector/aN;->b:[I

    if-nez v3, :cond_c0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/aN;->a:Lt/P;

    invoke-virtual {v1, v0, v3}, Lt/f;->a(Lt/P;Ljava/util/List;)V

    move v1, v2

    :goto_a5
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_40

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/aM;->d:Ljava/util/ArrayList;

    new-instance v5, Lcom/google/android/maps/driveabout/vector/aN;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/P;

    const/4 v6, 0x0

    invoke-direct {v5, v0, v6}, Lcom/google/android/maps/driveabout/vector/aN;-><init>(Lt/P;[I)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_a5

    :cond_c0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, v0, Lcom/google/android/maps/driveabout/vector/aN;->a:Lt/P;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/aN;->b:[I

    invoke-virtual {v1, v3, v0, v4, v5}, Lt/f;->a(Lt/P;[ILjava/util/List;Ljava/util/List;)V

    move v3, v2

    :goto_d2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_40

    iget-object v6, p0, Lcom/google/android/maps/driveabout/vector/aM;->d:Ljava/util/ArrayList;

    new-instance v7, Lcom/google/android/maps/driveabout/vector/aN;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/P;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    invoke-direct {v7, v0, v1}, Lcom/google/android/maps/driveabout/vector/aN;-><init>(Lt/P;[I)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_d2

    :cond_f2
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/t;->h()F

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/aM;->f:F

    return-void
.end method

.method private e()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aM;->b:Lcom/google/android/maps/driveabout/vector/aN;

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aM;->a:Lcom/google/android/maps/driveabout/vector/aN;

    const/16 v1, 0xa

    invoke-static {v1}, Lcom/google/android/maps/driveabout/vector/aM;->d(I)I

    move-result v1

    int-to-float v1, v1

    const/16 v2, 0x8

    invoke-static {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/aM;->a(Lcom/google/android/maps/driveabout/vector/aN;FI)Lcom/google/android/maps/driveabout/vector/aN;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aM;->b:Lcom/google/android/maps/driveabout/vector/aN;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aM;->b:Lcom/google/android/maps/driveabout/vector/aN;

    const/4 v1, 0x6

    invoke-static {v1}, Lcom/google/android/maps/driveabout/vector/aM;->d(I)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/aM;->a(Lcom/google/android/maps/driveabout/vector/aN;FI)Lcom/google/android/maps/driveabout/vector/aN;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aM;->c:Lcom/google/android/maps/driveabout/vector/aN;

    :cond_24
    return-void
.end method


# virtual methods
.method a(F)Lcom/google/android/maps/driveabout/vector/aN;
    .registers 3

    const/high16 v0, 0x4120

    cmpl-float v0, p1, v0

    if-lez v0, :cond_9

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aM;->a:Lcom/google/android/maps/driveabout/vector/aN;

    :goto_8
    return-object v0

    :cond_9
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/aM;->e()V

    const/high16 v0, 0x40c0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_15

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aM;->b:Lcom/google/android/maps/driveabout/vector/aN;

    goto :goto_8

    :cond_15
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aM;->c:Lcom/google/android/maps/driveabout/vector/aN;

    goto :goto_8
.end method

.method public a(I)V
    .registers 2

    iput p1, p0, Lcom/google/android/maps/driveabout/vector/aM;->h:I

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/t;Lcom/google/android/maps/driveabout/vector/J;)V
    .registers 5

    invoke-interface {p3}, Lcom/google/android/maps/driveabout/vector/J;->b()I

    move-result v0

    if-nez v0, :cond_29

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aM;->e:Lt/V;

    if-nez v0, :cond_d

    invoke-direct {p0, p2}, Lcom/google/android/maps/driveabout/vector/aM;->d(Lcom/google/android/maps/driveabout/vector/t;)V

    :cond_d
    invoke-direct {p0, p2}, Lcom/google/android/maps/driveabout/vector/aM;->b(Lcom/google/android/maps/driveabout/vector/t;)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-direct {p0, p1, p2}, Lcom/google/android/maps/driveabout/vector/aM;->b(Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/t;)V

    :cond_16
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aM;->i:Lcom/google/android/maps/driveabout/vector/di;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/di;->b()I

    move-result v0

    if-lez v0, :cond_29

    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    invoke-direct {p0, p1, p2}, Lcom/google/android/maps/driveabout/vector/aM;->a(Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/t;)V

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    :cond_29
    return-void
.end method

.method public a_(Lcom/google/android/maps/driveabout/vector/t;)Z
    .registers 4

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/aM;->c(Lcom/google/android/maps/driveabout/vector/t;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/aM;->d(Lcom/google/android/maps/driveabout/vector/t;)V

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_c
    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/aM;->p:Z

    monitor-exit p0

    :cond_f
    return v1

    :catchall_10
    move-exception v0

    monitor-exit p0
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_10

    throw v0
.end method

.method public b(I)V
    .registers 2

    iput p1, p0, Lcom/google/android/maps/driveabout/vector/aM;->l:I

    return-void
.end method

.method public declared-synchronized c(Z)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/aM;->o:Z

    if-eq v0, p1, :cond_a

    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/vector/aM;->o:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/aM;->p:Z
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    :cond_a
    monitor-exit p0

    return-void

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public s_()I
    .registers 2

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/aM;->l:I

    return v0
.end method
