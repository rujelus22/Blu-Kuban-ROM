.class public final Ldbxyzptlk/D/c;
.super Ljava/lang/Object;
.source "panda.py"


# instance fields
.field private a:I

.field private b:[F

.field private c:[F

.field private d:[F

.field private e:[I

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:F

.field private k:F

.field private l:F

.field private m:F

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:I

.field private t:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/16 v1, 0xa

    .line 484
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 487
    new-array v0, v1, [F

    iput-object v0, p0, Ldbxyzptlk/D/c;->b:[F

    .line 488
    new-array v0, v1, [F

    iput-object v0, p0, Ldbxyzptlk/D/c;->c:[F

    .line 489
    new-array v0, v1, [F

    iput-object v0, p0, Ldbxyzptlk/D/c;->d:[F

    .line 490
    new-array v0, v1, [I

    iput-object v0, p0, Ldbxyzptlk/D/c;->e:[I

    return-void
.end method

.method private a(I)I
    .registers 9
    .parameter

    .prologue
    .line 593
    const/4 v2, 0x0

    const v1, 0x8000

    const/16 v0, 0xf

    move v4, v1

    move v1, p1

    move v6, v2

    move v2, v0

    move v0, v6

    .line 595
    :goto_b
    shl-int/lit8 v3, v0, 0x1

    add-int v5, v3, v4

    add-int/lit8 v3, v2, -0x1

    shl-int v2, v5, v2

    if-lt v1, v2, :cond_17

    .line 596
    add-int/2addr v0, v4

    .line 597
    sub-int/2addr v1, v2

    .line 599
    :cond_17
    shr-int/lit8 v2, v4, 0x1

    if-gtz v2, :cond_1c

    .line 600
    return v0

    :cond_1c
    move v4, v2

    move v2, v3

    goto :goto_b
.end method

.method private a(I[F[F[F[IIZJ)V
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v5, 0x3f00

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 515
    iput-wide p8, p0, Ldbxyzptlk/D/c;->t:J

    .line 516
    iput p6, p0, Ldbxyzptlk/D/c;->s:I

    .line 517
    iput p1, p0, Ldbxyzptlk/D/c;->a:I

    move v0, v2

    .line 518
    :goto_b
    if-ge v0, p1, :cond_28

    .line 519
    iget-object v3, p0, Ldbxyzptlk/D/c;->b:[F

    aget v4, p2, v0

    aput v4, v3, v0

    .line 520
    iget-object v3, p0, Ldbxyzptlk/D/c;->c:[F

    aget v4, p3, v0

    aput v4, v3, v0

    .line 521
    iget-object v3, p0, Ldbxyzptlk/D/c;->d:[F

    aget v4, p4, v0

    aput v4, v3, v0

    .line 522
    iget-object v3, p0, Ldbxyzptlk/D/c;->e:[I

    aget v4, p5, v0

    aput v4, v3, v0

    .line 518
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 524
    :cond_28
    iput-boolean p7, p0, Ldbxyzptlk/D/c;->n:Z

    .line 525
    const/4 v0, 0x2

    if-lt p1, v0, :cond_69

    move v0, v1

    :goto_2e
    iput-boolean v0, p0, Ldbxyzptlk/D/c;->o:Z

    .line 527
    iget-boolean v0, p0, Ldbxyzptlk/D/c;->o:Z

    if-eqz v0, :cond_6b

    .line 528
    aget v0, p2, v2

    aget v3, p2, v1

    add-float/2addr v0, v3

    mul-float/2addr v0, v5

    iput v0, p0, Ldbxyzptlk/D/c;->f:F

    .line 529
    aget v0, p3, v2

    aget v3, p3, v1

    add-float/2addr v0, v3

    mul-float/2addr v0, v5

    iput v0, p0, Ldbxyzptlk/D/c;->g:F

    .line 530
    aget v0, p4, v2

    aget v3, p4, v1

    add-float/2addr v0, v3

    mul-float/2addr v0, v5

    iput v0, p0, Ldbxyzptlk/D/c;->h:F

    .line 531
    aget v0, p2, v1

    aget v3, p2, v2

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Ldbxyzptlk/D/c;->i:F

    .line 532
    aget v0, p3, v1

    aget v1, p3, v2

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Ldbxyzptlk/D/c;->j:F

    .line 542
    :goto_62
    iput-boolean v2, p0, Ldbxyzptlk/D/c;->r:Z

    iput-boolean v2, p0, Ldbxyzptlk/D/c;->q:Z

    iput-boolean v2, p0, Ldbxyzptlk/D/c;->p:Z

    .line 543
    return-void

    :cond_69
    move v0, v2

    .line 525
    goto :goto_2e

    .line 536
    :cond_6b
    aget v0, p2, v2

    iput v0, p0, Ldbxyzptlk/D/c;->f:F

    .line 537
    aget v0, p3, v2

    iput v0, p0, Ldbxyzptlk/D/c;->g:F

    .line 538
    aget v0, p4, v2

    iput v0, p0, Ldbxyzptlk/D/c;->h:F

    .line 539
    const/4 v0, 0x0

    iput v0, p0, Ldbxyzptlk/D/c;->j:F

    iput v0, p0, Ldbxyzptlk/D/c;->i:F

    goto :goto_62
.end method

.method static synthetic a(Ldbxyzptlk/D/c;I[F[F[F[IIZJ)V
    .registers 10
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
    .line 484
    invoke-direct/range {p0 .. p9}, Ldbxyzptlk/D/c;->a(I[F[F[F[IIZJ)V

    return-void
.end method

.method static synthetic b(Ldbxyzptlk/D/c;)J
    .registers 3
    .parameter

    .prologue
    .line 484
    iget-wide v0, p0, Ldbxyzptlk/D/c;->t:J

    return-wide v0
.end method


# virtual methods
.method public final a(Ldbxyzptlk/D/c;)V
    .registers 5
    .parameter

    .prologue
    .line 550
    iget v0, p1, Ldbxyzptlk/D/c;->a:I

    iput v0, p0, Ldbxyzptlk/D/c;->a:I

    .line 551
    const/4 v0, 0x0

    :goto_5
    iget v1, p0, Ldbxyzptlk/D/c;->a:I

    if-ge v0, v1, :cond_2c

    .line 552
    iget-object v1, p0, Ldbxyzptlk/D/c;->b:[F

    iget-object v2, p1, Ldbxyzptlk/D/c;->b:[F

    aget v2, v2, v0

    aput v2, v1, v0

    .line 553
    iget-object v1, p0, Ldbxyzptlk/D/c;->c:[F

    iget-object v2, p1, Ldbxyzptlk/D/c;->c:[F

    aget v2, v2, v0

    aput v2, v1, v0

    .line 554
    iget-object v1, p0, Ldbxyzptlk/D/c;->d:[F

    iget-object v2, p1, Ldbxyzptlk/D/c;->d:[F

    aget v2, v2, v0

    aput v2, v1, v0

    .line 555
    iget-object v1, p0, Ldbxyzptlk/D/c;->e:[I

    iget-object v2, p1, Ldbxyzptlk/D/c;->e:[I

    aget v2, v2, v0

    aput v2, v1, v0

    .line 551
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 557
    :cond_2c
    iget v0, p1, Ldbxyzptlk/D/c;->f:F

    iput v0, p0, Ldbxyzptlk/D/c;->f:F

    .line 558
    iget v0, p1, Ldbxyzptlk/D/c;->g:F

    iput v0, p0, Ldbxyzptlk/D/c;->g:F

    .line 559
    iget v0, p1, Ldbxyzptlk/D/c;->h:F

    iput v0, p0, Ldbxyzptlk/D/c;->h:F

    .line 560
    iget v0, p1, Ldbxyzptlk/D/c;->i:F

    iput v0, p0, Ldbxyzptlk/D/c;->i:F

    .line 561
    iget v0, p1, Ldbxyzptlk/D/c;->j:F

    iput v0, p0, Ldbxyzptlk/D/c;->j:F

    .line 562
    iget v0, p1, Ldbxyzptlk/D/c;->k:F

    iput v0, p0, Ldbxyzptlk/D/c;->k:F

    .line 563
    iget v0, p1, Ldbxyzptlk/D/c;->l:F

    iput v0, p0, Ldbxyzptlk/D/c;->l:F

    .line 564
    iget v0, p1, Ldbxyzptlk/D/c;->m:F

    iput v0, p0, Ldbxyzptlk/D/c;->m:F

    .line 565
    iget-boolean v0, p1, Ldbxyzptlk/D/c;->n:Z

    iput-boolean v0, p0, Ldbxyzptlk/D/c;->n:Z

    .line 566
    iget v0, p1, Ldbxyzptlk/D/c;->s:I

    iput v0, p0, Ldbxyzptlk/D/c;->s:I

    .line 567
    iget-boolean v0, p1, Ldbxyzptlk/D/c;->o:Z

    iput-boolean v0, p0, Ldbxyzptlk/D/c;->o:Z

    .line 568
    iget-boolean v0, p1, Ldbxyzptlk/D/c;->q:Z

    iput-boolean v0, p0, Ldbxyzptlk/D/c;->q:Z

    .line 569
    iget-boolean v0, p1, Ldbxyzptlk/D/c;->p:Z

    iput-boolean v0, p0, Ldbxyzptlk/D/c;->p:Z

    .line 570
    iget-boolean v0, p1, Ldbxyzptlk/D/c;->r:Z

    iput-boolean v0, p0, Ldbxyzptlk/D/c;->r:Z

    .line 571
    iget-wide v0, p1, Ldbxyzptlk/D/c;->t:J

    iput-wide v0, p0, Ldbxyzptlk/D/c;->t:J

    .line 572
    return-void
.end method

.method public final a()Z
    .registers 2

    .prologue
    .line 578
    iget-boolean v0, p0, Ldbxyzptlk/D/c;->o:Z

    return v0
.end method

.method public final b()F
    .registers 2

    .prologue
    .line 583
    iget-boolean v0, p0, Ldbxyzptlk/D/c;->o:Z

    if-eqz v0, :cond_7

    iget v0, p0, Ldbxyzptlk/D/c;->i:F

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public final c()F
    .registers 2

    .prologue
    .line 588
    iget-boolean v0, p0, Ldbxyzptlk/D/c;->o:Z

    if-eqz v0, :cond_7

    iget v0, p0, Ldbxyzptlk/D/c;->j:F

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public final d()F
    .registers 4

    .prologue
    .line 605
    iget-boolean v0, p0, Ldbxyzptlk/D/c;->p:Z

    if-nez v0, :cond_18

    .line 606
    iget-boolean v0, p0, Ldbxyzptlk/D/c;->o:Z

    if-eqz v0, :cond_1b

    iget v0, p0, Ldbxyzptlk/D/c;->i:F

    iget v1, p0, Ldbxyzptlk/D/c;->i:F

    mul-float/2addr v0, v1

    iget v1, p0, Ldbxyzptlk/D/c;->j:F

    iget v2, p0, Ldbxyzptlk/D/c;->j:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    :goto_13
    iput v0, p0, Ldbxyzptlk/D/c;->l:F

    .line 607
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldbxyzptlk/D/c;->p:Z

    .line 609
    :cond_18
    iget v0, p0, Ldbxyzptlk/D/c;->l:F

    return v0

    .line 606
    :cond_1b
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public final e()F
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 614
    iget-boolean v1, p0, Ldbxyzptlk/D/c;->q:Z

    if-nez v1, :cond_e

    .line 615
    iget-boolean v1, p0, Ldbxyzptlk/D/c;->o:Z

    if-nez v1, :cond_11

    .line 616
    iput v0, p0, Ldbxyzptlk/D/c;->k:F

    .line 629
    :cond_b
    :goto_b
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldbxyzptlk/D/c;->q:Z

    .line 631
    :cond_e
    iget v0, p0, Ldbxyzptlk/D/c;->k:F

    return v0

    .line 621
    :cond_11
    invoke-virtual {p0}, Ldbxyzptlk/D/c;->d()F

    move-result v1

    .line 622
    cmpl-float v2, v1, v0

    if-nez v2, :cond_34

    :goto_19
    iput v0, p0, Ldbxyzptlk/D/c;->k:F

    .line 624
    iget v0, p0, Ldbxyzptlk/D/c;->k:F

    iget v1, p0, Ldbxyzptlk/D/c;->i:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_27

    .line 625
    iget v0, p0, Ldbxyzptlk/D/c;->i:F

    iput v0, p0, Ldbxyzptlk/D/c;->k:F

    .line 626
    :cond_27
    iget v0, p0, Ldbxyzptlk/D/c;->k:F

    iget v1, p0, Ldbxyzptlk/D/c;->j:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_b

    .line 627
    iget v0, p0, Ldbxyzptlk/D/c;->j:F

    iput v0, p0, Ldbxyzptlk/D/c;->k:F

    goto :goto_b

    .line 622
    :cond_34
    const/high16 v0, 0x4380

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-direct {p0, v0}, Ldbxyzptlk/D/c;->a(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x4180

    div-float/2addr v0, v1

    goto :goto_19
.end method

.method public final f()F
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 639
    iget-boolean v0, p0, Ldbxyzptlk/D/c;->r:Z

    if-nez v0, :cond_f

    .line 640
    iget-boolean v0, p0, Ldbxyzptlk/D/c;->o:Z

    if-nez v0, :cond_12

    .line 641
    const/4 v0, 0x0

    iput v0, p0, Ldbxyzptlk/D/c;->m:F

    .line 644
    :goto_d
    iput-boolean v4, p0, Ldbxyzptlk/D/c;->r:Z

    .line 646
    :cond_f
    iget v0, p0, Ldbxyzptlk/D/c;->m:F

    return v0

    .line 643
    :cond_12
    iget-object v0, p0, Ldbxyzptlk/D/c;->c:[F

    aget v0, v0, v4

    iget-object v1, p0, Ldbxyzptlk/D/c;->c:[F

    aget v1, v1, v5

    sub-float/2addr v0, v1

    float-to-double v0, v0

    iget-object v2, p0, Ldbxyzptlk/D/c;->b:[F

    aget v2, v2, v4

    iget-object v3, p0, Ldbxyzptlk/D/c;->b:[F

    aget v3, v3, v5

    sub-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Ldbxyzptlk/D/c;->m:F

    goto :goto_d
.end method

.method public final g()F
    .registers 2

    .prologue
    .line 658
    iget v0, p0, Ldbxyzptlk/D/c;->f:F

    return v0
.end method

.method public final h()F
    .registers 2

    .prologue
    .line 668
    iget v0, p0, Ldbxyzptlk/D/c;->g:F

    return v0
.end method

.method public final i()Z
    .registers 2

    .prologue
    .line 699
    iget-boolean v0, p0, Ldbxyzptlk/D/c;->n:Z

    return v0
.end method

.method public final j()J
    .registers 3

    .prologue
    .line 707
    iget-wide v0, p0, Ldbxyzptlk/D/c;->t:J

    return-wide v0
.end method
