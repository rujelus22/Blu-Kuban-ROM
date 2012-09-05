.class public Lcom/google/android/maps/driveabout/vector/Z;
.super Lcom/google/android/maps/driveabout/vector/aE;


# instance fields
.field private final a:Lt/P;

.field private b:Lt/P;

.field private c:Lt/P;

.field private final d:Ljava/util/List;

.field private final e:Lt/r;

.field private f:Lt/V;

.field private g:F

.field private h:F

.field private final i:Lcom/google/android/maps/driveabout/vector/di;

.field private final j:Lcom/google/android/maps/driveabout/vector/bu;

.field private final k:F

.field private final l:I

.field private m:Z


# direct methods
.method public constructor <init>(Lt/P;FILt/r;)V
    .registers 7

    const/16 v1, 0x20

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/aE;-><init>()V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/Z;->a:Lt/P;

    iput p2, p0, Lcom/google/android/maps/driveabout/vector/Z;->k:F

    iput p3, p0, Lcom/google/android/maps/driveabout/vector/Z;->l:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/Z;->d:Ljava/util/List;

    iput-object p4, p0, Lcom/google/android/maps/driveabout/vector/Z;->e:Lt/r;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/di;

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/di;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/Z;->i:Lcom/google/android/maps/driveabout/vector/di;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/bu;

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/bu;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/Z;->j:Lcom/google/android/maps/driveabout/vector/bu;

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

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/Z;->a:Lt/P;

    :goto_8
    return-object v0

    :cond_9
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/Z;->h()V

    const/high16 v0, 0x40c0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_15

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/Z;->b:Lt/P;

    goto :goto_8

    :cond_15
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/Z;->c:Lt/P;

    goto :goto_8
.end method

.method private a(Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/J;Lcom/google/android/maps/driveabout/vector/t;)V
    .registers 8

    const/4 v3, 0x0

    iget-object v1, p1, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/Z;->e()Lcom/google/android/maps/driveabout/vector/cd;

    move-result-object v2

    if-eqz v2, :cond_18

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/Z;->d:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/P;

    invoke-virtual {v0, v3}, Lt/P;->a(I)Lt/L;

    move-result-object v0

    invoke-interface {v2, p1, p3, p2, v0}, Lcom/google/android/maps/driveabout/vector/cd;->a(Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/t;Lcom/google/android/maps/driveabout/vector/J;Lt/L;)V

    :cond_18
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/Z;->f:Lt/V;

    invoke-virtual {v0}, Lt/V;->d()Lt/L;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/Z;->f:Lt/V;

    invoke-virtual {v3}, Lt/V;->g()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v1, p3, v0, v3}, Lcom/google/android/maps/driveabout/vector/cN;->a(Ljavax/microedition/khronos/opengles/GL10;Lcom/google/android/maps/driveabout/vector/t;Lt/L;F)V

    const/4 v0, 0x1

    const/16 v3, 0x303

    invoke-interface {v1, v0, v3}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/Z;->i:Lcom/google/android/maps/driveabout/vector/di;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/di;->d(Lcom/google/android/maps/driveabout/vector/aT;)V

    invoke-direct {p0, v1}, Lcom/google/android/maps/driveabout/vector/Z;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/Z;->j:Lcom/google/android/maps/driveabout/vector/bu;

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Lcom/google/android/maps/driveabout/vector/bu;->a(Lcom/google/android/maps/driveabout/vector/aT;I)V

    if-eqz v2, :cond_41

    invoke-interface {v2, p1, p2}, Lcom/google/android/maps/driveabout/vector/cd;->a(Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/J;)V

    :cond_41
    return-void
.end method

.method private a(Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/t;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/Z;->i:Lcom/google/android/maps/driveabout/vector/di;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/di;->a(Lcom/google/android/maps/driveabout/vector/aT;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/Z;->j:Lcom/google/android/maps/driveabout/vector/bu;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/bu;->a(Lcom/google/android/maps/driveabout/vector/aT;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/Z;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/P;

    invoke-direct {p0, v0, p2}, Lcom/google/android/maps/driveabout/vector/Z;->a(Lt/P;Lcom/google/android/maps/driveabout/vector/t;)V

    goto :goto_10

    :cond_20
    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/t;->h()F

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/Z;->h:F

    return-void
.end method

.method private a(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 7

    const v4, 0xff00

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/Z;->l:I

    shr-int/lit8 v0, v0, 0x10

    and-int/2addr v0, v4

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/Z;->l:I

    shr-int/lit8 v1, v1, 0x8

    and-int/2addr v1, v4

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/Z;->l:I

    and-int/2addr v2, v4

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/Z;->l:I

    shl-int/lit8 v3, v3, 0x8

    and-int/2addr v3, v4

    invoke-interface {p1, v1, v2, v3, v0}, Ljavax/microedition/khronos/opengles/GL10;->glColor4x(IIII)V

    return-void
.end method

.method private a(Lt/P;Lcom/google/android/maps/driveabout/vector/t;)V
    .registers 13

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/Z;->f:Lt/V;

    invoke-virtual {v0}, Lt/V;->d()Lt/L;

    move-result-object v4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/Z;->f:Lt/V;

    invoke-virtual {v0}, Lt/V;->g()I

    move-result v5

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/t;->r()F

    move-result v0

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/Z;->k:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f00

    mul-float v2, v0, v1

    const/4 v3, 0x1

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/bb;->a()Lcom/google/android/maps/driveabout/vector/bb;

    move-result-object v0

    const/high16 v6, 0x3f80

    iget-object v7, p0, Lcom/google/android/maps/driveabout/vector/Z;->i:Lcom/google/android/maps/driveabout/vector/di;

    iget-object v8, p0, Lcom/google/android/maps/driveabout/vector/Z;->j:Lcom/google/android/maps/driveabout/vector/bu;

    const/4 v9, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/maps/driveabout/vector/bb;->a(Lt/P;FZLt/L;IFLcom/google/android/maps/driveabout/vector/di;Lcom/google/android/maps/driveabout/vector/bu;Lcom/google/android/maps/driveabout/vector/cp;)V

    return-void
.end method

.method private b(Lcom/google/android/maps/driveabout/vector/t;)Z
    .registers 7

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/high16 v4, 0x3fa0

    iget-boolean v2, p0, Lcom/google/android/maps/driveabout/vector/Z;->m:Z

    if-eqz v2, :cond_b

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/Z;->m:Z

    :goto_a
    return v1

    :cond_b
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/t;->h()F

    move-result v2

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/Z;->h:F

    mul-float/2addr v3, v4

    cmpl-float v3, v2, v3

    if-gtz v3, :cond_1d

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/Z;->h:F

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

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/Z;->f:Lt/V;

    if-nez v1, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/t;->h()F

    move-result v1

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/Z;->g:F

    mul-float/2addr v2, v3

    cmpl-float v2, v1, v2

    if-gtz v2, :cond_7

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/Z;->g:F

    div-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_7

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/Z;->f:Lt/V;

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
    .registers 9

    const v6, 0x1fffffff

    const/high16 v5, -0x2000

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/Z;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/t;->k()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/vector/Z;->a(F)Lt/P;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/t;->u()Lt/at;

    move-result-object v1

    invoke-virtual {v1}, Lt/at;->b()Lt/V;

    move-result-object v1

    invoke-virtual {v1}, Lt/V;->g()I

    move-result v2

    invoke-virtual {v1}, Lt/V;->h()I

    move-result v3

    const v4, 0x71c71c7

    if-gt v2, v4, :cond_29

    if-le v3, v4, :cond_6a

    :cond_29
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/Z;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lt/V;

    new-instance v1, Lt/L;

    invoke-direct {v1, v5, v5}, Lt/L;-><init>(II)V

    new-instance v2, Lt/L;

    invoke-direct {v2, v6, v6}, Lt/L;-><init>(II)V

    invoke-direct {v0, v1, v2}, Lt/V;-><init>(Lt/L;Lt/L;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/Z;->f:Lt/V;

    :goto_3f
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/t;->k()F

    move-result v0

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/Z;->a(I)I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_4c
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/Z;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_9d

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/Z;->d:Ljava/util/List;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/Z;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/P;

    int-to-float v4, v2

    invoke-virtual {v0, v4}, Lt/P;->b(F)Lt/P;

    move-result-object v0

    invoke-interface {v3, v1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4c

    :cond_6a
    new-instance v4, Lt/L;

    mul-int/lit8 v2, v2, 0x4

    mul-int/lit8 v3, v3, 0x4

    invoke-direct {v4, v2, v3}, Lt/L;-><init>(II)V

    invoke-virtual {v1}, Lt/V;->d()Lt/L;

    move-result-object v2

    invoke-virtual {v2, v4}, Lt/L;->f(Lt/L;)Lt/L;

    move-result-object v2

    invoke-virtual {v1}, Lt/V;->e()Lt/L;

    move-result-object v1

    invoke-virtual {v1, v4}, Lt/L;->e(Lt/L;)Lt/L;

    move-result-object v1

    invoke-virtual {v2, v2}, Lt/L;->j(Lt/L;)V

    invoke-virtual {v1, v1}, Lt/L;->j(Lt/L;)V

    new-instance v3, Lt/V;

    invoke-direct {v3, v2, v1}, Lt/V;-><init>(Lt/L;Lt/L;)V

    iput-object v3, p0, Lcom/google/android/maps/driveabout/vector/Z;->f:Lt/V;

    new-instance v1, Lt/f;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/Z;->f:Lt/V;

    invoke-direct {v1, v2}, Lt/f;-><init>(Lt/W;)V

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/Z;->d:Ljava/util/List;

    invoke-virtual {v1, v0, v2}, Lt/f;->a(Lt/P;Ljava/util/List;)V

    goto :goto_3f

    :cond_9d
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/t;->h()F

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/Z;->g:F

    return-void
.end method

.method private e()Lcom/google/android/maps/driveabout/vector/cd;
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/Z;->e:Lt/r;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/Z;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/Z;->d:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/P;

    invoke-virtual {v0}, Lt/P;->b()I

    move-result v0

    if-nez v0, :cond_1d

    :cond_1b
    const/4 v0, 0x0

    :goto_1c
    return-object v0

    :cond_1d
    invoke-static {}, Lr/l;->a()Lr/l;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/Z;->e:Lt/r;

    invoke-virtual {v0, v1}, Lr/l;->d(Lt/r;)Lr/e;

    move-result-object v0

    goto :goto_1c
.end method

.method private h()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/Z;->b:Lt/P;

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/Z;->a:Lt/P;

    const/16 v1, 0xa

    invoke-static {v1}, Lcom/google/android/maps/driveabout/vector/Z;->a(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lt/P;->b(F)Lt/P;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/Z;->b:Lt/P;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/Z;->b:Lt/P;

    const/4 v1, 0x6

    invoke-static {v1}, Lcom/google/android/maps/driveabout/vector/Z;->a(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lt/P;->b(F)Lt/P;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/Z;->c:Lt/P;

    :cond_21
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/t;Lcom/google/android/maps/driveabout/vector/J;)V
    .registers 5

    invoke-interface {p3}, Lcom/google/android/maps/driveabout/vector/J;->b()I

    move-result v0

    if-nez v0, :cond_29

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/Z;->f:Lt/V;

    if-nez v0, :cond_d

    invoke-direct {p0, p2}, Lcom/google/android/maps/driveabout/vector/Z;->d(Lcom/google/android/maps/driveabout/vector/t;)V

    :cond_d
    invoke-direct {p0, p2}, Lcom/google/android/maps/driveabout/vector/Z;->b(Lcom/google/android/maps/driveabout/vector/t;)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-direct {p0, p1, p2}, Lcom/google/android/maps/driveabout/vector/Z;->a(Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/t;)V

    :cond_16
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/Z;->i:Lcom/google/android/maps/driveabout/vector/di;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/di;->b()I

    move-result v0

    if-lez v0, :cond_29

    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    invoke-direct {p0, p1, p3, p2}, Lcom/google/android/maps/driveabout/vector/Z;->a(Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/J;Lcom/google/android/maps/driveabout/vector/t;)V

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    :cond_29
    return-void
.end method

.method public a_(Lcom/google/android/maps/driveabout/vector/t;)Z
    .registers 4

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/Z;->c(Lcom/google/android/maps/driveabout/vector/t;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/Z;->d(Lcom/google/android/maps/driveabout/vector/t;)V

    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/Z;->m:Z

    :cond_c
    return v1
.end method

.method public s_()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
