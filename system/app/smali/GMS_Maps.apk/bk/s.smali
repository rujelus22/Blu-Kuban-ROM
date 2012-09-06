.class Lbk/s;
.super Lbk/d;
.source "SourceFile"


# static fields
.field private static final c:[I


# instance fields
.field private final d:I

.field private final e:Lbk/d;

.field private final f:Lbk/d;

.field private final g:I

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 61
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v1, v0

    .line 69
    :goto_7
    if-lez v0, :cond_15

    .line 70
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    add-int/2addr v1, v0

    move v4, v1

    move v1, v0

    move v0, v4

    .line 74
    goto :goto_7

    .line 78
    :cond_15
    const v0, 0x7fffffff

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    sput-object v0, Lbk/s;->c:[I

    .line 80
    const/4 v0, 0x0

    move v1, v0

    :goto_29
    sget-object v0, Lbk/s;->c:[I

    array-length v0, v0

    if-ge v1, v0, :cond_40

    .line 82
    sget-object v3, Lbk/s;->c:[I

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v3, v1

    .line 80
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_29

    .line 84
    :cond_40
    return-void
.end method

.method static synthetic a(Lbk/s;)Lbk/d;
    .registers 2
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lbk/s;->e:Lbk/d;

    return-object v0
.end method

.method private a(Lbk/d;)Z
    .registers 15
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 451
    .line 452
    new-instance v7, Lbk/u;

    invoke-direct {v7, p0, v1}, Lbk/u;-><init>(Lbk/d;Lbk/t;)V

    .line 453
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbk/m;

    .line 456
    new-instance v8, Lbk/u;

    invoke-direct {v8, p1, v1}, Lbk/u;-><init>(Lbk/d;Lbk/t;)V

    .line 457
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbk/m;

    move-object v3, v1

    move v4, v2

    move-object v5, v0

    move v6, v2

    move v0, v2

    .line 461
    :goto_1d
    invoke-virtual {v5}, Lbk/m;->b()I

    move-result v1

    sub-int v9, v1, v6

    .line 462
    invoke-virtual {v3}, Lbk/m;->b()I

    move-result v1

    sub-int v10, v1, v4

    .line 463
    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 466
    if-nez v6, :cond_36

    invoke-virtual {v5, v3, v4, v11}, Lbk/m;->a(Lbk/m;II)Z

    move-result v1

    .line 469
    :goto_33
    if-nez v1, :cond_3b

    .line 476
    :goto_35
    return v2

    .line 466
    :cond_36
    invoke-virtual {v3, v5, v6, v11}, Lbk/m;->a(Lbk/m;II)Z

    move-result v1

    goto :goto_33

    .line 473
    :cond_3b
    add-int v1, v0, v11

    .line 474
    iget v0, p0, Lbk/s;->d:I

    if-lt v1, v0, :cond_4d

    .line 475
    iget v0, p0, Lbk/s;->d:I

    if-ne v1, v0, :cond_47

    .line 476
    const/4 v2, 0x1

    goto :goto_35

    .line 478
    :cond_47
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 481
    :cond_4d
    if-ne v11, v9, :cond_64

    .line 483
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbk/m;

    move-object v5, v0

    move v6, v2

    .line 487
    :goto_57
    if-ne v11, v10, :cond_66

    .line 489
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbk/m;

    move v3, v2

    :goto_60
    move v4, v3

    move-object v3, v0

    move v0, v1

    .line 493
    goto :goto_1d

    .line 485
    :cond_64
    add-int/2addr v6, v11

    goto :goto_57

    .line 491
    :cond_66
    add-int v0, v4, v11

    move-object v12, v3

    move v3, v0

    move-object v0, v12

    goto :goto_60
.end method

.method static synthetic b(Lbk/s;)Lbk/d;
    .registers 2
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lbk/s;->f:Lbk/d;

    return-object v0
.end method

.method static synthetic f()[I
    .registers 1

    .prologue
    .line 42
    sget-object v0, Lbk/s;->c:[I

    return-object v0
.end method


# virtual methods
.method protected a(III)I
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 525
    add-int v0, p2, p3

    .line 526
    iget v1, p0, Lbk/s;->g:I

    if-gt v0, v1, :cond_d

    .line 527
    iget-object v0, p0, Lbk/s;->e:Lbk/d;

    invoke-virtual {v0, p1, p2, p3}, Lbk/d;->a(III)I

    move-result v0

    .line 533
    :goto_c
    return v0

    .line 528
    :cond_d
    iget v0, p0, Lbk/s;->g:I

    if-lt p2, v0, :cond_1c

    .line 529
    iget-object v0, p0, Lbk/s;->f:Lbk/d;

    iget v1, p0, Lbk/s;->g:I

    sub-int v1, p2, v1

    invoke-virtual {v0, p1, v1, p3}, Lbk/d;->a(III)I

    move-result v0

    goto :goto_c

    .line 531
    :cond_1c
    iget v0, p0, Lbk/s;->g:I

    sub-int/2addr v0, p2

    .line 532
    iget-object v1, p0, Lbk/s;->e:Lbk/d;

    invoke-virtual {v1, p1, p2, v0}, Lbk/d;->a(III)I

    move-result v1

    .line 533
    iget-object v2, p0, Lbk/s;->f:Lbk/d;

    const/4 v3, 0x0

    sub-int v0, p3, v0

    invoke-virtual {v2, v1, v3, v0}, Lbk/d;->a(III)I

    move-result v0

    goto :goto_c
.end method

.method public a()Lbk/e;
    .registers 3

    .prologue
    .line 738
    new-instance v0, Lbk/v;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lbk/v;-><init>(Lbk/s;Lbk/t;)V

    return-object v0
.end method

.method public b()I
    .registers 2

    .prologue
    .line 241
    iget v0, p0, Lbk/s;->d:I

    return v0
.end method

.method protected b([BIII)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 332
    add-int v0, p2, p4

    iget v1, p0, Lbk/s;->g:I

    if-gt v0, v1, :cond_c

    .line 333
    iget-object v0, p0, Lbk/s;->e:Lbk/d;

    invoke-virtual {v0, p1, p2, p3, p4}, Lbk/d;->b([BIII)V

    .line 343
    :goto_b
    return-void

    .line 334
    :cond_c
    iget v0, p0, Lbk/s;->g:I

    if-lt p2, v0, :cond_1a

    .line 335
    iget-object v0, p0, Lbk/s;->f:Lbk/d;

    iget v1, p0, Lbk/s;->g:I

    sub-int v1, p2, v1

    invoke-virtual {v0, p1, v1, p3, p4}, Lbk/d;->b([BIII)V

    goto :goto_b

    .line 338
    :cond_1a
    iget v0, p0, Lbk/s;->g:I

    sub-int/2addr v0, p2

    .line 339
    iget-object v1, p0, Lbk/s;->e:Lbk/d;

    invoke-virtual {v1, p1, p2, p3, v0}, Lbk/d;->b([BIII)V

    .line 340
    iget-object v1, p0, Lbk/s;->f:Lbk/d;

    const/4 v2, 0x0

    add-int v3, p3, v0

    sub-int v0, p4, v0

    invoke-virtual {v1, p1, v2, v3, v0}, Lbk/d;->b([BIII)V

    goto :goto_b
.end method

.method public d()Ljava/io/InputStream;
    .registers 2

    .prologue
    .line 547
    new-instance v0, Lbk/w;

    invoke-direct {v0, p0}, Lbk/w;-><init>(Lbk/s;)V

    return-object v0
.end method

.method protected e()I
    .registers 2

    .prologue
    .line 520
    iget v0, p0, Lbk/s;->h:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 411
    if-ne p1, p0, :cond_5

    .line 438
    :cond_4
    :goto_4
    return v0

    .line 414
    :cond_5
    instance-of v2, p1, Lbk/d;

    if-nez v2, :cond_b

    move v0, v1

    .line 415
    goto :goto_4

    .line 418
    :cond_b
    check-cast p1, Lbk/d;

    .line 419
    iget v2, p0, Lbk/s;->d:I

    invoke-virtual {p1}, Lbk/d;->b()I

    move-result v3

    if-eq v2, v3, :cond_17

    move v0, v1

    .line 420
    goto :goto_4

    .line 422
    :cond_17
    iget v2, p0, Lbk/s;->d:I

    if-eqz v2, :cond_4

    .line 431
    iget v0, p0, Lbk/s;->h:I

    if-eqz v0, :cond_2b

    .line 432
    invoke-virtual {p1}, Lbk/d;->e()I

    move-result v0

    .line 433
    if-eqz v0, :cond_2b

    iget v2, p0, Lbk/s;->h:I

    if-eq v2, v0, :cond_2b

    move v0, v1

    .line 434
    goto :goto_4

    .line 438
    :cond_2b
    invoke-direct {p0, p1}, Lbk/s;->a(Lbk/d;)Z

    move-result v0

    goto :goto_4
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 505
    iget v0, p0, Lbk/s;->h:I

    .line 507
    if-nez v0, :cond_12

    .line 508
    iget v0, p0, Lbk/s;->d:I

    .line 509
    const/4 v1, 0x0

    iget v2, p0, Lbk/s;->d:I

    invoke-virtual {p0, v0, v1, v2}, Lbk/s;->a(III)I

    move-result v0

    .line 510
    if-nez v0, :cond_10

    .line 511
    const/4 v0, 0x1

    .line 513
    :cond_10
    iput v0, p0, Lbk/s;->h:I

    .line 515
    :cond_12
    return v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 42
    invoke-virtual {p0}, Lbk/s;->a()Lbk/e;

    move-result-object v0

    return-object v0
.end method
