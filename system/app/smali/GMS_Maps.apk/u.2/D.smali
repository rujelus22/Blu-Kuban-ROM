.class public Lu/D;
.super Ljava/lang/Object;


# static fields
.field private static final b:[F

.field private static final c:[F


# instance fields
.field a:D

.field private final d:Lu/p;

.field private e:Ls/b;

.field private f:D

.field private g:D

.field private h:Lu/B;

.field private i:[Lu/j;

.field private j:I

.field private k:Z

.field private l:D

.field private volatile m:Lu/q;

.field private n:D

.field private o:Z


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/high16 v4, 0x4270

    const/4 v3, 0x0

    const/4 v0, 0x6

    new-array v0, v0, [F

    sput-object v0, Lu/D;->b:[F

    const/4 v0, 0x6

    new-array v0, v0, [F

    sput-object v0, Lu/D;->c:[F

    sget-object v0, Lu/D;->b:[F

    aput v4, v0, v5

    sget-object v0, Lu/D;->b:[F

    const/high16 v1, 0x4040

    aput v1, v0, v6

    sget-object v0, Lu/D;->b:[F

    const/high16 v1, 0x40d0

    aput v1, v0, v7

    sget-object v0, Lu/D;->b:[F

    const/4 v1, 0x3

    const/high16 v2, 0x41f0

    aput v2, v0, v1

    sget-object v0, Lu/D;->b:[F

    const/4 v1, 0x4

    aput v4, v0, v1

    sget-object v0, Lu/D;->c:[F

    aput v3, v0, v5

    sget-object v0, Lu/D;->c:[F

    const v1, 0x3f333333

    aput v1, v0, v6

    sget-object v0, Lu/D;->c:[F

    const v1, 0x3ecccccd

    aput v1, v0, v7

    sget-object v0, Lu/D;->c:[F

    const/4 v1, 0x3

    const v2, 0x3e19999a

    aput v2, v0, v1

    sget-object v0, Lu/D;->c:[F

    const/4 v1, 0x4

    aput v3, v0, v1

    return-void
.end method

.method constructor <init>(Lu/p;)V
    .registers 5

    const/4 v2, 0x0

    const-wide/high16 v0, -0x4010

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lu/D;->f:D

    iput-wide v0, p0, Lu/D;->g:D

    iput-wide v0, p0, Lu/D;->l:D

    const-wide v0, 0x7fefffffffffffffL

    iput-wide v0, p0, Lu/D;->n:D

    iput-object p1, p0, Lu/D;->d:Lu/p;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lt/L;->a(D)D

    move-result-wide v0

    iput-wide v0, p0, Lu/D;->a:D

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, v2, v0, v2, v1}, Lu/D;->a([Lu/x;ILu/I;I)V

    return-void
.end method

.method private a(Lu/j;)D
    .registers 6

    invoke-virtual {p1}, Lu/j;->e()Lu/I;

    move-result-object v0

    invoke-direct {p0, v0}, Lu/D;->b(Lu/I;)D

    move-result-wide v0

    invoke-virtual {p1}, Lu/j;->b()I

    move-result v2

    int-to-double v2, v2

    add-double/2addr v0, v2

    return-wide v0
.end method

.method private a(D)V
    .registers 8

    const/4 v4, 0x0

    invoke-direct {p0, p1, p2}, Lu/D;->c(D)Lu/I;

    move-result-object v0

    iget-object v1, p0, Lu/D;->m:Lu/q;

    invoke-virtual {v1}, Lu/q;->h()Lu/I;

    move-result-object v1

    if-eq v0, v1, :cond_20

    if-eqz v1, :cond_15

    invoke-virtual {v1}, Lu/I;->j()Lu/I;

    move-result-object v1

    if-eq v0, v1, :cond_18

    :cond_15
    invoke-direct {p0, p1, p2}, Lu/D;->d(D)V

    :cond_18
    invoke-direct {p0, v0}, Lu/D;->a(Lu/I;)V

    iget-object v0, p0, Lu/D;->d:Lu/p;

    invoke-virtual {v0}, Lu/p;->c()V

    :cond_20
    iget-object v0, p0, Lu/D;->e:Ls/b;

    invoke-virtual {v0}, Ls/b;->getSpeed()F

    move-result v0

    float-to-double v0, v0

    iget v2, p0, Lu/D;->j:I

    :goto_29
    invoke-direct {p0, p1, p2, v0, v1}, Lu/D;->a(DD)Z

    move-result v3

    if-eqz v3, :cond_36

    iget v3, p0, Lu/D;->j:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lu/D;->j:I

    goto :goto_29

    :cond_36
    iget v0, p0, Lu/D;->j:I

    if-le v0, v2, :cond_5e

    iput-boolean v4, p0, Lu/D;->k:Z

    iget-object v0, p0, Lu/D;->i:[Lu/j;

    iget v1, p0, Lu/D;->j:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lu/D;->a(Lu/j;)D

    move-result-wide v1

    cmpg-double v1, p1, v1

    if-gtz v1, :cond_5e

    invoke-virtual {v0}, Lu/j;->e()Lu/I;

    move-result-object v1

    invoke-direct {p0, v1}, Lu/D;->c(Lu/I;)D

    move-result-wide v1

    double-to-int v1, v1

    iget-wide v2, p0, Lu/D;->g:D

    double-to-int v2, v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lu/D;->d:Lu/p;

    invoke-virtual {v2, v0, v1}, Lu/p;->a(Lu/j;I)V

    :cond_5e
    iget v0, p0, Lu/D;->j:I

    iget-object v1, p0, Lu/D;->i:[Lu/j;

    array-length v1, v1

    if-lt v0, v1, :cond_7f

    invoke-virtual {p0, v4}, Lu/D;->a(I)Z

    move-result v0

    if-eqz v0, :cond_70

    iget-object v0, p0, Lu/D;->d:Lu/p;

    invoke-virtual {v0}, Lu/p;->b()V

    :cond_70
    iget-object v0, p0, Lu/D;->d:Lu/p;

    invoke-virtual {v0}, Lu/p;->j()V

    iget-object v0, p0, Lu/D;->d:Lu/p;

    invoke-virtual {v0}, Lu/p;->e()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lu/D;->a(Lu/I;)V

    :goto_7e
    return-void

    :cond_7f
    invoke-direct {p0, p1, p2}, Lu/D;->b(D)V

    goto :goto_7e
.end method

.method private a(Lu/I;)V
    .registers 3

    iget-object v0, p0, Lu/D;->m:Lu/q;

    invoke-virtual {v0}, Lu/q;->h()Lu/I;

    move-result-object v0

    if-eq v0, p1, :cond_b

    invoke-direct {p0, p1}, Lu/D;->e(Lu/I;)V

    :cond_b
    return-void
.end method

.method private a([Lu/x;ILu/I;I)V
    .registers 17

    const/4 v11, 0x0

    iget-object v0, p0, Lu/D;->m:Lu/q;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lu/D;->m:Lu/q;

    invoke-virtual {v0}, Lu/q;->i()Lu/x;

    move-result-object v11

    :cond_b
    if-eqz p1, :cond_19

    if-ltz p2, :cond_19

    if-eqz p3, :cond_19

    iget-wide v0, p0, Lu/D;->f:D

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_2b

    :cond_19
    new-instance v0, Lu/q;

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v11}, Lu/q;-><init>([Lu/x;ILu/I;IIIIZIZLu/x;)V

    iput-object v0, p0, Lu/D;->m:Lu/q;

    :goto_2a
    return-void

    :cond_2b
    aget-object v2, p1, p2

    invoke-virtual {p3}, Lu/I;->y()I

    move-result v0

    invoke-virtual {v2, v0}, Lu/x;->c(I)D

    move-result-wide v0

    iget-wide v3, p0, Lu/D;->g:D

    sub-double/2addr v0, v3

    double-to-int v5, v0

    iget-wide v0, p0, Lu/D;->f:D

    invoke-virtual {v2, v0, v1}, Lu/x;->b(D)I

    move-result v7

    int-to-float v1, v5

    invoke-virtual {p3}, Lu/I;->i()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :goto_46
    invoke-virtual {v2}, Lu/x;->k()I

    move-result v3

    if-ge v0, v3, :cond_59

    invoke-virtual {v2, v0}, Lu/x;->a(I)Lu/I;

    move-result-object v3

    invoke-virtual {v3}, Lu/I;->e()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_46

    :cond_59
    const/4 v4, -0x1

    iget-object v0, p0, Lu/D;->h:Lu/B;

    if-eqz v0, :cond_64

    iget-object v0, p0, Lu/D;->h:Lu/B;

    invoke-virtual {v0}, Lu/B;->e()I

    move-result v4

    :cond_64
    invoke-virtual {v2}, Lu/x;->p()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, v1

    const/high16 v2, 0x4348

    cmpl-float v0, v0, v2

    if-lez v0, :cond_8d

    const/4 v8, 0x1

    :goto_71
    aget-object v0, p1, p2

    invoke-virtual {v0}, Lu/x;->a()Z

    move-result v0

    if-nez v0, :cond_7b

    aget-object v11, p1, p2

    :cond_7b
    new-instance v0, Lu/q;

    float-to-int v6, v1

    invoke-direct {p0}, Lu/D;->f()Z

    move-result v10

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move/from16 v9, p4

    invoke-direct/range {v0 .. v11}, Lu/q;-><init>([Lu/x;ILu/I;IIIIZIZLu/x;)V

    iput-object v0, p0, Lu/D;->m:Lu/q;

    goto :goto_2a

    :cond_8d
    const/4 v8, 0x0

    goto :goto_71
.end method

.method private a(DD)Z
    .registers 9

    invoke-direct {p0, p1, p2, p3, p4}, Lu/D;->b(DD)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private a(Ls/b;)Z
    .registers 10

    const-wide/high16 v6, 0x4049

    const/4 v2, 0x0

    iget-object v0, p0, Lu/D;->d:Lu/p;

    invoke-virtual {v0}, Lu/p;->h()Z

    move-result v0

    if-nez v0, :cond_d

    move v0, v2

    :goto_c
    return v0

    :cond_d
    iget-object v0, p0, Lu/D;->m:Lu/q;

    invoke-virtual {v0}, Lu/q;->g()Lu/x;

    move-result-object v3

    if-eqz v3, :cond_46

    invoke-virtual {v3}, Lu/x;->l()Lu/P;

    move-result-object v0

    if-eqz v0, :cond_46

    iget-wide v0, p0, Lu/D;->n:D

    iget-wide v4, p0, Lu/D;->a:D

    div-double/2addr v0, v4

    invoke-virtual {p1}, Ls/b;->getAccuracy()F

    move-result v4

    float-to-double v4, v4

    add-double/2addr v0, v4

    invoke-virtual {p1}, Ls/b;->e()Z

    move-result v4

    if-eqz v4, :cond_32

    invoke-virtual {v3}, Lu/x;->d()I

    move-result v4

    if-eqz v4, :cond_33

    :cond_32
    add-double/2addr v0, v6

    :cond_33
    invoke-virtual {v3}, Lu/x;->l()Lu/P;

    move-result-object v4

    invoke-virtual {v4}, Lu/P;->c()Lt/o;

    move-result-object v4

    invoke-virtual {p1, v4}, Ls/b;->b(Lt/o;)F

    move-result v4

    float-to-double v4, v4

    cmpg-double v0, v4, v0

    if-gez v0, :cond_46

    move v0, v2

    goto :goto_c

    :cond_46
    invoke-virtual {v3}, Lu/x;->d()I

    move-result v0

    if-nez v0, :cond_73

    invoke-virtual {p1}, Ls/b;->e()Z

    move-result v0

    if-nez v0, :cond_73

    invoke-virtual {p1}, Ls/b;->i()Lt/L;

    move-result-object v0

    if-nez v0, :cond_5a

    move v0, v2

    goto :goto_c

    :cond_5a
    if-eqz v3, :cond_73

    iget-wide v0, p0, Lu/D;->a:D

    mul-double/2addr v0, v6

    invoke-virtual {p1}, Ls/b;->i()Lt/L;

    move-result-object v4

    invoke-virtual {v3, v4, v0, v1}, Lu/x;->a(Lt/L;D)Lu/B;

    move-result-object v3

    if-eqz v3, :cond_73

    invoke-virtual {v3}, Lu/B;->d()D

    move-result-wide v3

    cmpg-double v0, v3, v0

    if-gtz v0, :cond_73

    move v0, v2

    goto :goto_c

    :cond_73
    const/4 v0, 0x1

    goto :goto_c
.end method

.method private a(Lu/I;D)Z
    .registers 10

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_5

    :goto_4
    return v3

    :cond_5
    iget-object v0, p0, Lu/D;->m:Lu/q;

    invoke-virtual {v0}, Lu/q;->g()Lu/x;

    move-result-object v4

    invoke-virtual {p1}, Lu/I;->k()Lu/I;

    move-result-object v0

    if-nez v0, :cond_2a

    const-wide/16 v0, 0x0

    :goto_13
    invoke-virtual {p1}, Lu/I;->y()I

    move-result v5

    invoke-virtual {v4}, Lu/x;->n()Lt/P;

    move-result-object v4

    invoke-virtual {v4}, Lt/P;->b()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v5, v4, :cond_31

    cmpl-double v0, p2, v0

    if-ltz v0, :cond_2f

    move v0, v2

    :goto_28
    move v3, v0

    goto :goto_4

    :cond_2a
    invoke-direct {p0, v0}, Lu/D;->b(Lu/I;)D

    move-result-wide v0

    goto :goto_13

    :cond_2f
    move v0, v3

    goto :goto_28

    :cond_31
    invoke-direct {p0, p1}, Lu/D;->b(Lu/I;)D

    move-result-wide v4

    cmpg-double v0, v0, p2

    if-gtz v0, :cond_3f

    cmpl-double v0, v4, p2

    if-lez v0, :cond_3f

    :goto_3d
    move v3, v2

    goto :goto_4

    :cond_3f
    move v2, v3

    goto :goto_3d
.end method

.method private b(DD)D
    .registers 14

    iget v0, p0, Lu/D;->j:I

    if-nez v0, :cond_7

    const-wide/16 v0, 0x0

    :goto_6
    return-wide v0

    :cond_7
    iget v0, p0, Lu/D;->j:I

    iget-object v1, p0, Lu/D;->i:[Lu/j;

    array-length v1, v1

    if-lt v0, v1, :cond_14

    const-wide v0, 0x47efffffe0000000L

    goto :goto_6

    :cond_14
    iget-object v0, p0, Lu/D;->i:[Lu/j;

    iget v1, p0, Lu/D;->j:I

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lu/D;->a(Lu/j;)D

    move-result-wide v1

    invoke-virtual {v0}, Lu/j;->d()I

    move-result v3

    int-to-double v3, v3

    iget-wide v5, p0, Lu/D;->a:D

    mul-double/2addr v5, p3

    invoke-virtual {v0}, Lu/j;->c()I

    move-result v0

    int-to-double v7, v0

    mul-double/2addr v5, v7

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    sub-double v0, v1, v3

    sub-double/2addr v0, p1

    const-wide/16 v2, 0x0

    cmpg-double v2, v0, v2

    if-gtz v2, :cond_3c

    const-wide/16 v0, 0x0

    goto :goto_6

    :cond_3c
    const-wide/16 v2, 0x0

    cmpl-double v2, p3, v2

    if-lez v2, :cond_47

    iget-wide v2, p0, Lu/D;->a:D

    mul-double/2addr v2, p3

    div-double/2addr v0, v2

    goto :goto_6

    :cond_47
    const-wide v0, 0x47efffffe0000000L

    goto :goto_6
.end method

.method private b(Lu/I;)D
    .registers 6

    invoke-virtual {p1}, Lu/I;->y()I

    move-result v0

    if-nez v0, :cond_14

    invoke-direct {p0, p1}, Lu/D;->d(Lu/I;)D

    move-result-wide v0

    invoke-virtual {p1}, Lu/I;->a()Lt/L;

    move-result-object v2

    invoke-virtual {v2}, Lt/L;->e()D

    move-result-wide v2

    mul-double/2addr v0, v2

    :goto_13
    return-wide v0

    :cond_14
    iget-object v0, p0, Lu/D;->m:Lu/q;

    invoke-virtual {v0}, Lu/q;->g()Lu/x;

    move-result-object v0

    invoke-virtual {p1}, Lu/I;->y()I

    move-result v1

    invoke-virtual {v0, v1}, Lu/x;->b(I)D

    move-result-wide v0

    goto :goto_13
.end method

.method private b(Landroid/location/Location;)Lu/B;
    .registers 3

    instance-of v0, p1, Ls/b;

    if-eqz v0, :cond_b

    check-cast p1, Ls/b;

    invoke-virtual {p1}, Ls/b;->j()Lu/B;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private b(D)V
    .registers 13

    const/4 v9, 0x1

    iget-boolean v0, p0, Lu/D;->k:Z

    if-eqz v0, :cond_6

    :cond_5
    :goto_5
    return-void

    :cond_6
    iget v0, p0, Lu/D;->j:I

    iget-object v1, p0, Lu/D;->i:[Lu/j;

    array-length v1, v1

    if-ge v0, v1, :cond_5

    iget-object v0, p0, Lu/D;->i:[Lu/j;

    iget v1, p0, Lu/D;->j:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lu/j;->a()I

    move-result v1

    if-eqz v1, :cond_22

    iget-object v1, p0, Lu/D;->d:Lu/p;

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Lu/p;->b(Lu/j;I)V

    iput-boolean v9, p0, Lu/D;->k:Z

    goto :goto_5

    :cond_22
    iget-object v1, p0, Lu/D;->e:Ls/b;

    invoke-virtual {v1}, Ls/b;->hasSpeed()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lu/D;->e:Ls/b;

    invoke-virtual {v1}, Ls/b;->getSpeed()F

    move-result v1

    float-to-double v1, v1

    invoke-direct {p0, p1, p2, v1, v2}, Lu/D;->b(DD)D

    move-result-wide v3

    const-wide/high16 v5, 0x4014

    cmpg-double v5, v3, v5

    if-gtz v5, :cond_5

    invoke-virtual {v0}, Lu/j;->e()Lu/I;

    move-result-object v5

    invoke-direct {p0, v5}, Lu/D;->c(Lu/I;)D

    move-result-wide v5

    iget-wide v7, p0, Lu/D;->g:D

    mul-double/2addr v1, v3

    add-double/2addr v1, v7

    sub-double v1, v5, v1

    const-wide/16 v3, 0x0

    cmpl-double v3, v1, v3

    if-lez v3, :cond_5

    iget-object v3, p0, Lu/D;->d:Lu/p;

    double-to-int v1, v1

    invoke-virtual {v3, v0, v1}, Lu/p;->b(Lu/j;I)V

    iput-boolean v9, p0, Lu/D;->k:Z

    goto :goto_5
.end method

.method private b(I)V
    .registers 5

    iget-object v0, p0, Lu/D;->m:Lu/q;

    invoke-virtual {v0}, Lu/q;->f()[Lu/x;

    move-result-object v0

    iget-object v1, p0, Lu/D;->m:Lu/q;

    invoke-virtual {v1}, Lu/q;->m()I

    move-result v1

    iget-object v2, p0, Lu/D;->m:Lu/q;

    invoke-virtual {v2}, Lu/q;->h()Lu/I;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2, p1}, Lu/D;->a([Lu/x;ILu/I;I)V

    return-void
.end method

.method private c(Lu/I;)D
    .registers 4

    invoke-virtual {p1}, Lu/I;->y()I

    move-result v0

    if-nez v0, :cond_b

    invoke-direct {p0, p1}, Lu/D;->d(Lu/I;)D

    move-result-wide v0

    :goto_a
    return-wide v0

    :cond_b
    iget-object v0, p0, Lu/D;->m:Lu/q;

    invoke-virtual {v0}, Lu/q;->g()Lu/x;

    move-result-object v0

    invoke-virtual {p1}, Lu/I;->y()I

    move-result v1

    invoke-virtual {v0, v1}, Lu/x;->c(I)D

    move-result-wide v0

    goto :goto_a
.end method

.method private c(D)Lu/I;
    .registers 7

    iget-object v0, p0, Lu/D;->m:Lu/q;

    invoke-virtual {v0}, Lu/q;->h()Lu/I;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lu/D;->a(Lu/I;D)Z

    move-result v1

    if-eqz v1, :cond_d

    :goto_c
    return-object v0

    :cond_d
    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Lu/I;->j()Lu/I;

    move-result-object v1

    invoke-direct {p0, v1, p1, p2}, Lu/D;->a(Lu/I;D)Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-virtual {v0}, Lu/I;->j()Lu/I;

    move-result-object v0

    goto :goto_c

    :cond_1e
    iget-object v0, p0, Lu/D;->m:Lu/q;

    invoke-virtual {v0}, Lu/q;->g()Lu/x;

    move-result-object v2

    const/4 v0, 0x0

    :goto_25
    invoke-virtual {v2}, Lu/x;->k()I

    move-result v1

    if-ge v0, v1, :cond_3e

    invoke-virtual {v2, v0}, Lu/x;->a(I)Lu/I;

    move-result-object v1

    invoke-virtual {v2, v0}, Lu/x;->a(I)Lu/I;

    move-result-object v3

    invoke-direct {p0, v3, p1, p2}, Lu/D;->a(Lu/I;D)Z

    move-result v3

    if-eqz v3, :cond_3b

    move-object v0, v1

    goto :goto_c

    :cond_3b
    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    :cond_3e
    const/4 v0, 0x0

    goto :goto_c
.end method

.method private d(Lu/I;)D
    .registers 4

    iget-object v0, p0, Lu/D;->m:Lu/q;

    invoke-virtual {v0}, Lu/q;->g()Lu/x;

    move-result-object v0

    invoke-virtual {v0}, Lu/x;->g()Z

    move-result v1

    if-nez v1, :cond_16

    iget-boolean v1, p0, Lu/D;->o:Z

    if-eqz v1, :cond_16

    invoke-virtual {v0}, Lu/x;->d()I

    move-result v0

    if-eqz v0, :cond_2f

    :cond_16
    invoke-virtual {p1}, Lu/I;->j()Lu/I;

    move-result-object v0

    if-eqz v0, :cond_2f

    const/high16 v0, 0x41a0

    invoke-virtual {p1}, Lu/I;->j()Lu/I;

    move-result-object v1

    invoke-virtual {v1}, Lu/I;->e()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-double v0, v0

    :goto_2e
    return-wide v0

    :cond_2f
    const-wide/16 v0, 0x0

    goto :goto_2e
.end method

.method private d(D)V
    .registers 7

    const/4 v3, 0x0

    iget v0, p0, Lu/D;->j:I

    iput v3, p0, Lu/D;->j:I

    :goto_5
    iget v1, p0, Lu/D;->j:I

    iget-object v2, p0, Lu/D;->i:[Lu/j;

    array-length v2, v2

    if-ge v1, v2, :cond_1a

    iget-object v1, p0, Lu/D;->i:[Lu/j;

    iget v2, p0, Lu/D;->j:I

    aget-object v1, v1, v2

    invoke-direct {p0, v1}, Lu/D;->a(Lu/j;)D

    move-result-wide v1

    cmpl-double v1, v1, p1

    if-lez v1, :cond_21

    :cond_1a
    iget v1, p0, Lu/D;->j:I

    if-eq v0, v1, :cond_20

    iput-boolean v3, p0, Lu/D;->k:Z

    :cond_20
    return-void

    :cond_21
    iget v1, p0, Lu/D;->j:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lu/D;->j:I

    goto :goto_5
.end method

.method private e()V
    .registers 7

    iget-wide v0, p0, Lu/D;->l:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_1a

    iget-wide v0, p0, Lu/D;->f:D

    iget-wide v2, p0, Lu/D;->l:D

    sub-double/2addr v0, v2

    const-wide v2, 0x407f400000000000L

    iget-wide v4, p0, Lu/D;->a:D

    mul-double/2addr v2, v4

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1a

    :cond_19
    :goto_19
    return-void

    :cond_1a
    iget-wide v0, p0, Lu/D;->f:D

    iput-wide v0, p0, Lu/D;->l:D

    invoke-virtual {p0}, Lu/D;->c()I

    move-result v0

    invoke-virtual {p0, v0}, Lu/D;->a(I)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lu/D;->d:Lu/p;

    invoke-virtual {v0}, Lu/p;->b()V

    goto :goto_19
.end method

.method private e(Lu/I;)V
    .registers 5

    iget-object v0, p0, Lu/D;->m:Lu/q;

    invoke-virtual {v0}, Lu/q;->f()[Lu/x;

    move-result-object v0

    iget-object v1, p0, Lu/D;->m:Lu/q;

    invoke-virtual {v1}, Lu/q;->m()I

    move-result v1

    iget-object v2, p0, Lu/D;->m:Lu/q;

    invoke-virtual {v2}, Lu/q;->k()I

    move-result v2

    invoke-direct {p0, v0, v1, p1, v2}, Lu/D;->a([Lu/x;ILu/I;I)V

    return-void
.end method

.method private f()Z
    .registers 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lu/D;->e:Ls/b;

    if-nez v2, :cond_7

    :cond_6
    :goto_6
    return v1

    :cond_7
    iget-object v2, p0, Lu/D;->e:Ls/b;

    invoke-virtual {v2}, Ls/b;->k()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-static {}, Lz/n;->a()Lz/l;

    move-result-object v2

    invoke-virtual {v2}, Lz/l;->s()D

    move-result-wide v2

    iget-object v4, p0, Lu/D;->e:Ls/b;

    invoke-virtual {v4}, Ls/b;->l()D

    move-result-wide v4

    cmpl-double v2, v4, v2

    if-ltz v2, :cond_23

    :goto_21
    move v1, v0

    goto :goto_6

    :cond_23
    move v0, v1

    goto :goto_21

    :cond_25
    iget-object v2, p0, Lu/D;->h:Lu/B;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lu/D;->h:Lu/B;

    invoke-virtual {v2}, Lu/B;->d()D

    move-result-wide v2

    iget-wide v4, p0, Lu/D;->a:D

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x4049

    const/high16 v6, 0x4000

    iget-object v7, p0, Lu/D;->e:Ls/b;

    invoke-virtual {v7}, Ls/b;->getAccuracy()F

    move-result v7

    mul-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_48

    :goto_46
    move v1, v0

    goto :goto_6

    :cond_48
    move v0, v1

    goto :goto_46
.end method

.method private g()V
    .registers 9

    const-wide/high16 v6, -0x4010

    iget-object v0, p0, Lu/D;->e:Ls/b;

    invoke-virtual {v0}, Ls/b;->getLatitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Lt/L;->a(D)D

    move-result-wide v0

    iput-wide v0, p0, Lu/D;->a:D

    iget-object v0, p0, Lu/D;->e:Ls/b;

    invoke-direct {p0, v0}, Lu/D;->b(Landroid/location/Location;)Lu/B;

    move-result-object v0

    iget-object v1, p0, Lu/D;->m:Lu/q;

    invoke-virtual {v1}, Lu/q;->g()Lu/x;

    move-result-object v1

    if-eqz v0, :cond_68

    invoke-virtual {v0}, Lu/B;->a()Lu/x;

    move-result-object v2

    if-ne v2, v1, :cond_68

    iput-object v0, p0, Lu/D;->h:Lu/B;

    :goto_24
    iget-object v0, p0, Lu/D;->h:Lu/B;

    if-eqz v0, :cond_87

    iget-object v0, p0, Lu/D;->h:Lu/B;

    invoke-virtual {v1, v0}, Lu/x;->a(Lu/B;)D

    move-result-wide v2

    iput-wide v2, p0, Lu/D;->f:D

    iget-object v0, p0, Lu/D;->h:Lu/B;

    invoke-virtual {v0}, Lu/B;->e()I

    move-result v0

    invoke-virtual {v1, v0}, Lu/x;->c(I)D

    move-result-wide v2

    invoke-virtual {v1}, Lu/x;->n()Lt/P;

    move-result-object v0

    iget-object v1, p0, Lu/D;->h:Lu/B;

    invoke-virtual {v1}, Lu/B;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Lt/P;->a(I)Lt/L;

    move-result-object v0

    iget-object v1, p0, Lu/D;->h:Lu/B;

    invoke-virtual {v1}, Lu/B;->b()Lt/L;

    move-result-object v1

    invoke-virtual {v0, v1}, Lt/L;->c(Lt/L;)F

    move-result v0

    float-to-double v0, v0

    iget-wide v4, p0, Lu/D;->a:D

    div-double/2addr v0, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Lu/D;->g:D

    iget-wide v0, p0, Lu/D;->n:D

    iget-object v2, p0, Lu/D;->h:Lu/B;

    invoke-virtual {v2}, Lu/B;->d()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lu/D;->n:D

    :goto_67
    return-void

    :cond_68
    iget-object v0, p0, Lu/D;->e:Ls/b;

    invoke-virtual {v0}, Ls/b;->getLatitude()D

    move-result-wide v2

    iget-object v0, p0, Lu/D;->e:Ls/b;

    invoke-virtual {v0}, Ls/b;->getLongitude()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lt/L;->a(DD)Lt/L;

    move-result-object v0

    const-wide v2, 0x40c3880000000000L

    iget-wide v4, p0, Lu/D;->a:D

    mul-double/2addr v2, v4

    invoke-virtual {v1, v0, v2, v3}, Lu/x;->a(Lt/L;D)Lu/B;

    move-result-object v0

    iput-object v0, p0, Lu/D;->h:Lu/B;

    goto :goto_24

    :cond_87
    iput-wide v6, p0, Lu/D;->f:D

    iput-wide v6, p0, Lu/D;->g:D

    goto :goto_67
.end method

.method private h()V
    .registers 2

    iget-object v0, p0, Lu/D;->m:Lu/q;

    invoke-virtual {v0}, Lu/q;->h()Lu/I;

    move-result-object v0

    invoke-direct {p0, v0}, Lu/D;->e(Lu/I;)V

    return-void
.end method


# virtual methods
.method a([D)D
    .registers 15

    const-wide/16 v1, 0x0

    iget-object v0, p0, Lu/D;->m:Lu/q;

    invoke-virtual {v0}, Lu/q;->g()Lu/x;

    move-result-object v5

    invoke-virtual {v5}, Lu/x;->t()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lu/D;->h:Lu/B;

    if-nez v0, :cond_14

    :cond_12
    move-wide v0, v1

    :goto_13
    return-wide v0

    :cond_14
    invoke-virtual {v5}, Lu/x;->u()Ljava/util/Collection;

    move-result-object v0

    if-nez v0, :cond_1c

    move-wide v0, v1

    goto :goto_13

    :cond_1c
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v4, 0x0

    iget-object v0, p0, Lu/D;->h:Lu/B;

    invoke-virtual {v0}, Lu/B;->e()I

    move-result v3

    :cond_27
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/C;

    invoke-virtual {v0, v3}, Lu/C;->a(I)Z

    move-result v7

    if-eqz v7, :cond_27

    :goto_39
    if-nez v0, :cond_3d

    move-wide v0, v1

    goto :goto_13

    :cond_3d
    invoke-virtual {v5}, Lu/x;->n()Lt/P;

    move-result-object v4

    invoke-static {}, Lz/n;->a()Lz/l;

    move-result-object v5

    invoke-virtual {v5}, Lz/l;->r()I

    move-result v5

    mul-int/lit16 v5, v5, 0x3e8

    int-to-double v7, v5

    iget-wide v9, p0, Lu/D;->a:D

    mul-double/2addr v7, v9

    :cond_4f
    :goto_4f
    cmpg-double v5, v1, v7

    if-gez v5, :cond_7d

    invoke-virtual {v4, v3}, Lt/P;->b(I)F

    move-result v5

    float-to-double v9, v5

    add-double/2addr v1, v9

    invoke-virtual {v0, v3}, Lu/C;->a(I)Z

    move-result v5

    if-eqz v5, :cond_68

    invoke-virtual {v0}, Lu/C;->a()I

    move-result v5

    aget-wide v11, p1, v5

    add-double/2addr v9, v11

    aput-wide v9, p1, v5

    :cond_68
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Lu/C;->a(I)Z

    move-result v5

    if-nez v5, :cond_4f

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/C;

    goto :goto_4f

    :cond_7d
    move-wide v0, v1

    goto :goto_13

    :cond_7f
    move-object v0, v4

    goto :goto_39
.end method

.method a([DD)I
    .registers 17

    const-wide/16 v3, 0x0

    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    move-wide v11, v1

    move-wide v1, v3

    move-wide v3, v11

    :goto_8
    const/4 v5, 0x4

    if-gt v0, v5, :cond_25

    aget-wide v5, p1, v0

    sget-object v7, Lu/D;->b:[F

    const/4 v8, 0x4

    aget v7, v7, v8

    sget-object v8, Lu/D;->b:[F

    aget v8, v8, v0

    div-float/2addr v7, v8

    const/high16 v8, 0x3f80

    sub-float/2addr v7, v8

    float-to-double v7, v7

    mul-double/2addr v5, v7

    add-double/2addr v5, v1

    aget-wide v1, p1, v0

    add-double/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    move-wide v3, v1

    move-wide v1, v5

    goto :goto_8

    :cond_25
    div-double v5, v1, v3

    const-wide v0, 0x408f400000000000L

    iget-wide v7, p0, Lu/D;->a:D

    mul-double/2addr v7, v0

    const-wide/16 v1, 0x0

    const/4 v0, 0x1

    :goto_32
    const/4 v9, 0x4

    if-ge v0, v9, :cond_49

    aget-wide v9, p1, v0

    add-double/2addr v1, v9

    cmpl-double v9, v1, v7

    if-lez v9, :cond_46

    sget-object v9, Lu/D;->c:[F

    aget v9, v9, v0

    float-to-double v9, v9

    cmpl-double v9, v5, v9

    if-lez v9, :cond_46

    :goto_45
    return v0

    :cond_46
    add-int/lit8 v0, v0, 0x1

    goto :goto_32

    :cond_49
    const/4 v0, 0x0

    aget-wide v0, p1, v0

    const-wide/high16 v5, 0x3fe0

    mul-double v2, v3, v5

    cmpg-double v0, v0, v2

    if-gez v0, :cond_56

    const/4 v0, 0x4

    goto :goto_45

    :cond_56
    const/4 v0, 0x5

    goto :goto_45
.end method

.method public a()Lu/q;
    .registers 2

    iget-object v0, p0, Lu/D;->m:Lu/q;

    return-object v0
.end method

.method public a(Landroid/location/Location;)V
    .registers 9

    const-wide/high16 v5, -0x4010

    const/4 v2, 0x0

    const/4 v1, 0x1

    check-cast p1, Ls/b;

    iput-object p1, p0, Lu/D;->e:Ls/b;

    iget-object v0, p0, Lu/D;->i:[Lu/j;

    if-eqz v0, :cond_c4

    iget v0, p0, Lu/D;->j:I

    iget-object v3, p0, Lu/D;->i:[Lu/j;

    array-length v3, v3

    if-ge v0, v3, :cond_c4

    iget-object v0, p0, Lu/D;->m:Lu/q;

    invoke-virtual {v0}, Lu/q;->g()Lu/x;

    move-result-object v0

    invoke-virtual {v0}, Lu/x;->j()Z

    move-result v0

    if-eqz v0, :cond_ea

    iget-object v0, p0, Lu/D;->e:Ls/b;

    invoke-virtual {v0}, Ls/b;->b()Z

    move-result v0

    if-eqz v0, :cond_ea

    iget-object v0, p0, Lu/D;->m:Lu/q;

    invoke-virtual {v0}, Lu/q;->g()Lu/x;

    move-result-object v0

    invoke-virtual {v0}, Lu/x;->l()Lu/P;

    move-result-object v0

    if-eqz v0, :cond_ea

    iget-object v0, p0, Lu/D;->e:Ls/b;

    iget-object v3, p0, Lu/D;->m:Lu/q;

    invoke-virtual {v3}, Lu/q;->g()Lu/x;

    move-result-object v3

    invoke-virtual {v3}, Lu/x;->l()Lu/P;

    move-result-object v3

    invoke-virtual {v3}, Lu/P;->c()Lt/o;

    move-result-object v3

    invoke-virtual {v0, v3}, Ls/b;->b(Lt/o;)F

    move-result v0

    const/high16 v3, 0x4348

    cmpl-float v0, v0, v3

    if-lez v0, :cond_ea

    move v0, v1

    :goto_4e
    invoke-direct {p0}, Lu/D;->g()V

    invoke-direct {p0}, Lu/D;->f()Z

    move-result v3

    if-nez v3, :cond_6d

    iget-object v4, p0, Lu/D;->e:Ls/b;

    invoke-direct {p0, v4}, Lu/D;->a(Ls/b;)Z

    move-result v4

    if-eqz v4, :cond_6d

    iput-boolean v2, p0, Lu/D;->k:Z

    const/4 v0, -0x1

    iput v0, p0, Lu/D;->j:I

    iput-wide v5, p0, Lu/D;->f:D

    iput-wide v5, p0, Lu/D;->g:D

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lu/D;->a(Lu/I;)V

    move v0, v1

    :cond_6d
    if-eqz v0, :cond_76

    iget-object v0, p0, Lu/D;->d:Lu/p;

    iget-object v4, p0, Lu/D;->e:Ls/b;

    invoke-virtual {v0, v4}, Lu/p;->a(Ls/b;)V

    :cond_76
    iget-object v0, p0, Lu/D;->e:Ls/b;

    invoke-virtual {v0}, Ls/b;->e()Z

    move-result v0

    if-nez v0, :cond_e6

    iget-object v0, p0, Lu/D;->m:Lu/q;

    invoke-virtual {v0}, Lu/q;->g()Lu/x;

    move-result-object v4

    const/16 v0, 0x64

    invoke-virtual {v4}, Lu/x;->d()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_dc

    const/16 v0, 0xa

    :cond_8f
    :goto_8f
    iget-object v5, p0, Lu/D;->e:Ls/b;

    invoke-virtual {v4}, Lu/x;->m()Lu/P;

    move-result-object v6

    invoke-virtual {v6}, Lu/P;->c()Lt/o;

    move-result-object v6

    invoke-virtual {v5, v6}, Ls/b;->b(Lt/o;)F

    move-result v5

    int-to-float v0, v0

    cmpg-float v0, v5, v0

    if-gez v0, :cond_e8

    invoke-virtual {v4}, Lu/x;->n()Lt/P;

    move-result-object v0

    invoke-virtual {v0}, Lt/P;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v4, v0}, Lu/x;->b(I)D

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lu/D;->a(D)V

    :goto_b3
    if-eqz v3, :cond_c4

    iget-object v0, p0, Lu/D;->e:Ls/b;

    invoke-virtual {v0}, Ls/b;->b()Z

    move-result v0

    if-eqz v0, :cond_c4

    if-nez v1, :cond_c4

    iget-wide v0, p0, Lu/D;->f:D

    invoke-direct {p0, v0, v1}, Lu/D;->a(D)V

    :cond_c4
    invoke-direct {p0}, Lu/D;->h()V

    iget-object v0, p0, Lu/D;->h:Lu/B;

    if-eqz v0, :cond_d6

    iget-object v0, p0, Lu/D;->m:Lu/q;

    invoke-virtual {v0}, Lu/q;->h()Lu/I;

    move-result-object v0

    if-eqz v0, :cond_d6

    invoke-direct {p0}, Lu/D;->e()V

    :cond_d6
    iget-object v0, p0, Lu/D;->d:Lu/p;

    invoke-virtual {v0}, Lu/p;->d()V

    return-void

    :cond_dc
    invoke-virtual {v4}, Lu/x;->d()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_8f

    const/16 v0, 0x1e

    goto :goto_8f

    :cond_e6
    iput-boolean v1, p0, Lu/D;->o:Z

    :cond_e8
    move v1, v2

    goto :goto_b3

    :cond_ea
    move v0, v2

    goto/16 :goto_4e
.end method

.method public a([Lu/x;IZ)V
    .registers 11

    const/4 v6, 0x0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    iput-object v6, p0, Lu/D;->h:Lu/B;

    iput-wide v2, p0, Lu/D;->f:D

    iput-wide v2, p0, Lu/D;->g:D

    const-wide/high16 v4, -0x4010

    iput-wide v4, p0, Lu/D;->l:D

    iput v1, p0, Lu/D;->j:I

    iput-boolean v1, p0, Lu/D;->k:Z

    const-wide v4, 0x7fefffffffffffffL

    iput-wide v4, p0, Lu/D;->n:D

    iget-object v0, p0, Lu/D;->e:Ls/b;

    if-eqz v0, :cond_af

    iget-object v0, p0, Lu/D;->e:Ls/b;

    invoke-virtual {v0}, Ls/b;->e()Z

    move-result v0

    if-eqz v0, :cond_af

    const/4 v0, 0x1

    :goto_26
    iput-boolean v0, p0, Lu/D;->o:Z

    invoke-direct {p0, p1, p2, v6, v1}, Lu/D;->a([Lu/x;ILu/I;I)V

    invoke-direct {p0, v2, v3}, Lu/D;->c(D)Lu/I;

    move-result-object v0

    invoke-direct {p0, v0}, Lu/D;->a(Lu/I;)V

    iget-object v0, p0, Lu/D;->m:Lu/q;

    invoke-virtual {v0}, Lu/q;->g()Lu/x;

    move-result-object v0

    invoke-virtual {v0}, Lu/x;->l()Lu/P;

    move-result-object v4

    if-eqz v4, :cond_63

    invoke-virtual {v0}, Lu/x;->l()Lu/P;

    move-result-object v4

    invoke-virtual {v4}, Lu/P;->c()Lt/o;

    move-result-object v4

    if-eqz v4, :cond_63

    invoke-virtual {v0}, Lu/x;->l()Lu/P;

    move-result-object v4

    invoke-virtual {v4}, Lu/P;->c()Lt/o;

    move-result-object v4

    invoke-virtual {v0}, Lu/x;->n()Lt/P;

    move-result-object v5

    invoke-virtual {v5, v1}, Lt/P;->a(I)Lt/L;

    move-result-object v1

    invoke-static {v4}, Lt/L;->a(Lt/o;)Lt/L;

    move-result-object v4

    invoke-virtual {v1, v4}, Lt/L;->c(Lt/L;)F

    move-result v1

    float-to-double v4, v1

    iput-wide v4, p0, Lu/D;->n:D

    :cond_63
    invoke-virtual {p0, v0}, Lu/D;->a(Lu/x;)[Lu/j;

    move-result-object v0

    iput-object v0, p0, Lu/D;->i:[Lu/j;

    iget-object v0, p0, Lu/D;->e:Ls/b;

    if-eqz v0, :cond_80

    invoke-direct {p0}, Lu/D;->g()V

    iget-wide v0, p0, Lu/D;->f:D

    invoke-direct {p0, v0, v1}, Lu/D;->c(D)Lu/I;

    move-result-object v0

    invoke-direct {p0, v0}, Lu/D;->a(Lu/I;)V

    invoke-virtual {p0}, Lu/D;->c()I

    move-result v0

    invoke-virtual {p0, v0}, Lu/D;->a(I)Z

    :cond_80
    iget-object v0, p0, Lu/D;->d:Lu/p;

    invoke-virtual {v0}, Lu/p;->a()V

    iget-object v0, p0, Lu/D;->m:Lu/q;

    invoke-virtual {v0}, Lu/q;->h()Lu/I;

    move-result-object v0

    if-eqz p3, :cond_b2

    iget-object v0, p0, Lu/D;->e:Ls/b;

    if-eqz v0, :cond_c8

    iget-object v0, p0, Lu/D;->e:Ls/b;

    invoke-virtual {v0}, Ls/b;->hasSpeed()Z

    move-result v0

    if-eqz v0, :cond_c8

    iget-object v0, p0, Lu/D;->e:Ls/b;

    invoke-virtual {v0}, Ls/b;->getSpeed()F

    move-result v0

    float-to-double v0, v0

    :goto_a0
    iget-wide v2, p0, Lu/D;->f:D

    invoke-direct {p0, v2, v3, v0, v1}, Lu/D;->a(DD)Z

    move-result v2

    if-eqz v2, :cond_c1

    iget v2, p0, Lu/D;->j:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lu/D;->j:I

    goto :goto_a0

    :cond_af
    move v0, v1

    goto/16 :goto_26

    :cond_b2
    iget-object v1, p0, Lu/D;->e:Ls/b;

    if-eqz v1, :cond_c2

    if-eqz v0, :cond_c2

    invoke-virtual {v0}, Lu/I;->y()I

    move-result v0

    if-nez v0, :cond_c2

    invoke-direct {p0, v2, v3}, Lu/D;->a(D)V

    :cond_c1
    :goto_c1
    return-void

    :cond_c2
    iget-wide v0, p0, Lu/D;->f:D

    invoke-direct {p0, v0, v1}, Lu/D;->d(D)V

    goto :goto_c1

    :cond_c8
    move-wide v0, v2

    goto :goto_a0
.end method

.method a(I)Z
    .registers 3

    iget-object v0, p0, Lu/D;->m:Lu/q;

    invoke-virtual {v0}, Lu/q;->k()I

    move-result v0

    if-eq p1, v0, :cond_d

    invoke-direct {p0, p1}, Lu/D;->b(I)V

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method a(Lu/x;)[Lu/j;
    .registers 5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_6
    invoke-virtual {p1}, Lu/x;->k()I

    move-result v2

    if-ge v0, v2, :cond_1c

    invoke-virtual {p1, v0}, Lu/x;->a(I)Lu/I;

    move-result-object v2

    invoke-virtual {v2}, Lu/I;->v()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_19

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_1c
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lu/j;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lu/j;

    return-object v0
.end method

.method public b()Z
    .registers 2

    iget-object v0, p0, Lu/D;->m:Lu/q;

    invoke-virtual {v0}, Lu/q;->h()Lu/I;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method c()I
    .registers 6

    const/4 v0, 0x6

    new-array v0, v0, [D

    invoke-virtual {p0, v0}, Lu/D;->a([D)D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpl-double v3, v1, v3

    if-nez v3, :cond_f

    const/4 v0, 0x0

    :goto_e
    return v0

    :cond_f
    invoke-virtual {p0, v0, v1, v2}, Lu/D;->a([DD)I

    move-result v0

    goto :goto_e
.end method

.method public d()V
    .registers 4

    const-wide/high16 v0, -0x4010

    const/4 v2, 0x0

    iput-object v2, p0, Lu/D;->h:Lu/B;

    iput-wide v0, p0, Lu/D;->g:D

    iput-wide v0, p0, Lu/D;->f:D

    iput-wide v0, p0, Lu/D;->l:D

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, v2, v0, v2, v1}, Lu/D;->a([Lu/x;ILu/I;I)V

    iput-object v2, p0, Lu/D;->i:[Lu/j;

    return-void
.end method
