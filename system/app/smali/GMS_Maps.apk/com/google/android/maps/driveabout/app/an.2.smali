.class public Lcom/google/android/maps/driveabout/app/aN;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private A:Lo/r;

.field private B:Lcom/google/android/maps/driveabout/app/dD;

.field private C:Lcom/google/android/maps/driveabout/app/ad;

.field private D:Lcom/google/android/maps/driveabout/app/a;

.field private E:Ljava/lang/Runnable;

.field private F:Ljava/lang/Runnable;

.field private G:Lm/b;

.field private H:Z

.field private I:Lm/b;

.field private J:F

.field private final K:Lcom/google/android/maps/driveabout/app/dj;

.field private final L:Lcom/google/android/maps/driveabout/app/do;

.field private M:I

.field private N:Lk/G;

.field private O:I

.field protected a:Lm/o;

.field protected b:Lcom/google/android/maps/driveabout/app/NavigationService;

.field protected c:I

.field protected d:I

.field protected e:I

.field protected f:Lm/b;

.field protected g:F

.field protected h:F

.field protected i:Z

.field protected j:Z

.field protected k:Z

.field protected l:Z

.field protected m:Z

.field protected n:Z

.field protected o:Z

.field protected p:Z

.field protected q:Z

.field protected r:I

.field protected s:I

.field protected t:J

.field protected u:Lo/q;

.field protected v:[Lo/P;

.field protected w:[Lo/b;

.field protected x:Ljava/lang/String;

.field protected y:Lo/a;

.field protected z:Z


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    const v3, 0x927c0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/maps/driveabout/app/aN;->J:F

    .line 112
    iput v3, p0, Lcom/google/android/maps/driveabout/app/aN;->c:I

    .line 113
    const/16 v0, 0x7530

    iput v0, p0, Lcom/google/android/maps/driveabout/app/aN;->d:I

    .line 114
    iput v3, p0, Lcom/google/android/maps/driveabout/app/aN;->e:I

    .line 118
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/google/android/maps/driveabout/app/aN;->g:F

    .line 121
    iput-boolean v2, p0, Lcom/google/android/maps/driveabout/app/aN;->i:Z

    .line 122
    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/app/aN;->j:Z

    .line 123
    iput-boolean v2, p0, Lcom/google/android/maps/driveabout/app/aN;->k:Z

    .line 124
    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/app/aN;->l:Z

    .line 125
    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/app/aN;->m:Z

    .line 126
    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/app/aN;->n:Z

    .line 127
    iput-boolean v2, p0, Lcom/google/android/maps/driveabout/app/aN;->o:Z

    .line 128
    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/app/aN;->p:Z

    .line 129
    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/app/aN;->q:Z

    .line 145
    new-instance v0, Lcom/google/android/maps/driveabout/app/dj;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/app/dj;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/aN;->K:Lcom/google/android/maps/driveabout/app/dj;

    .line 148
    new-instance v0, Lcom/google/android/maps/driveabout/app/do;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/app/do;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/aN;->L:Lcom/google/android/maps/driveabout/app/do;

    .line 149
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/app/aN;->M:I

    .line 156
    iput v1, p0, Lcom/google/android/maps/driveabout/app/aN;->O:I

    .line 1195
    return-void
.end method

.method private static a(ZI)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 430
    invoke-static {p0}, Lcom/google/android/maps/driveabout/vector/aX;->a(Z)V

    .line 449
    return-void
.end method

.method private ah()V
    .registers 2

    .prologue
    .line 580
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aN;->F:Ljava/lang/Runnable;

    if-eqz v0, :cond_c

    .line 581
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aN;->F:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/aN;->b(Ljava/lang/Runnable;)V

    .line 582
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/aN;->F:Ljava/lang/Runnable;

    .line 584
    :cond_c
    return-void
.end method

.method private ai()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 615
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aN;->E:Ljava/lang/Runnable;

    if-eqz v0, :cond_c

    .line 616
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aN;->E:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/aN;->b(Ljava/lang/Runnable;)V

    .line 617
    iput-object v1, p0, Lcom/google/android/maps/driveabout/app/aN;->E:Ljava/lang/Runnable;

    .line 619
    :cond_c
    iput-object v1, p0, Lcom/google/android/maps/driveabout/app/aN;->G:Lm/b;

    .line 620
    return-void
.end method

.method private d(I)V
    .registers 5
    .parameter

    .prologue
    .line 567
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aN;->F:Ljava/lang/Runnable;

    if-nez v0, :cond_11

    .line 568
    new-instance v0, Lcom/google/android/maps/driveabout/app/aO;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/aO;-><init>(Lcom/google/android/maps/driveabout/app/aN;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/aN;->F:Ljava/lang/Runnable;

    .line 575
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aN;->F:Ljava/lang/Runnable;

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/maps/driveabout/app/aN;->a(Ljava/lang/Runnable;J)V

    .line 577
    :cond_11
    return-void
.end method


# virtual methods
.method public A()I
    .registers 2

    .prologue
    .line 344
    iget v0, p0, Lcom/google/android/maps/driveabout/app/aN;->r:I

    return v0
.end method

.method public B()V
    .registers 2

    .prologue
    .line 348
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/maps/driveabout/app/aN;->r:I

    .line 349
    return-void
.end method

.method public C()Lo/P;
    .registers 3

    .prologue
    .line 352
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aN;->v:[Lo/P;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aN;->v:[Lo/P;

    array-length v0, v0

    if-lez v0, :cond_13

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aN;->v:[Lo/P;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/aN;->v:[Lo/P;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public D()Z
    .registers 2

    .prologue
    .line 362
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aN;->C()Lo/P;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public E()[Lo/P;
    .registers 2

    .prologue
    .line 366
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aN;->v:[Lo/P;

    return-object v0
.end method

.method public F()I
    .registers 2

    .prologue
    .line 370
    iget v0, p0, Lcom/google/android/maps/driveabout/app/aN;->s:I

    return v0
.end method

.method public G()Ljava/lang/String;
    .registers 2

    .prologue
    .line 374
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aN;->x:Ljava/lang/String;

    return-object v0
.end method

.method public H()[Lo/b;
    .registers 2

    .prologue
    .line 382
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aN;->w:[Lo/b;

    return-object v0
.end method

.method protected I()Ls/q;
    .registers 2

    .prologue
    .line 386
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aN;->B:Lcom/google/android/maps/driveabout/app/dD;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/dD;->a()Ls/n;

    move-result-object v0

    invoke-virtual {v0}, Ls/n;->g()Ls/q;

    move-result-object v0

    return-object v0
.end method

.method protected J()V
    .registers 3

    .prologue
    .line 458
    invoke-static {}, Lo/q;->a()Lo/q;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/aN;->u:Lo/q;

    .line 459
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aN;->a:Lm/o;

    iget v1, p0, Lcom/google/android/maps/driveabout/app/aN;->s:I

    invoke-virtual {v0, v1}, Lm/o;->a(I)V

    .line 460
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aN;->B:Lcom/google/android/maps/driveabout/app/dD;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/dD;->a()Ls/n;

    move-result-object v0

    invoke-virtual {v0}, Ls/n;->h()V

    .line 461
    return-void
.end method

.method public K()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 481
    iget v2, p0, Lcom/google/android/maps/driveabout/app/aN;->M:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_e

    .line 482
    iget v2, p0, Lcom/google/android/maps/driveabout/app/aN;->M:I

    if-nez v2, :cond_c

    .line 484
    :cond_b
    :goto_b
    return v0

    :cond_c
    move v0, v1

    .line 482
    goto :goto_b

    .line 484
    :cond_e
    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/aN;->f:Lm/b;

    if-eqz v2, :cond_1c

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/aN;->L:Lcom/google/android/maps/driveabout/app/do;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/aN;->f:Lm/b;

    invoke-virtual {v2, v3}, Lcom/google/android/maps/driveabout/app/do;->a(Landroid/location/Location;)I

    move-result v2

    if-eqz v2, :cond_b

    :cond_1c
    move v0, v1

    goto :goto_b
.end method

.method public L()V
    .registers 2

    .prologue
    .line 500
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/app/aN;->M:I

    .line 501
    return-void
.end method

.method public M()V
    .registers 3

    .prologue
    .line 508
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aN;->N:Lk/G;

    if-eqz v0, :cond_c

    .line 509
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MockLocationManager is already enabled!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 512
    :cond_c
    new-instance v0, Lk/G;

    invoke-direct {v0}, Lk/G;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/aN;->N:Lk/G;

    .line 513
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aN;->a:Lm/o;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/aN;->N:Lk/G;

    invoke-virtual {v0, v1}, Lm/o;->a(Lk/G;)V

    .line 514
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aN;->N:Lk/G;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/aN;->b:Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-static {v1}, Lk/O;->a(Landroid/content/Context;)Lk/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Lk/G;->a(LA/f;)V

    .line 516
    return-void
.end method

.method public N()V
    .registers 2

    .prologue
    .line 519
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aN;->N:Lk/G;

    if-eqz v0, :cond_c

    .line 520
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aN;->N:Lk/G;

    invoke-virtual {v0}, Lk/G;->c()V

    .line 521
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/aN;->N:Lk/G;

    .line 523
    :cond_c
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aN;->a:Lm/o;

    invoke-virtual {v0}, Lm/o;->k()V

    .line 524
    return-void
.end method

.method public O()V
    .registers 2

    .prologue
    .line 540
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aN;->Y()V

    .line 541
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aN;->a:Lm/o;

    invoke-virtual {v0}, Lm/o;->i()V

    .line 542
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aN;->D()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 543
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aN;->R()V

    .line 547
    :goto_11
    return-void

    .line 545
    :cond_12
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aN;->S()V

    goto :goto_11
.end method

.method public P()V
    .registers 2

    .prologue
    .line 554
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aN;->Y()V

    .line 555
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aN;->a:Lm/o;

    invoke-virtual {v0}, Lm/o;->h()V

    .line 556
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/aN;->ai()V

    .line 557
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/aN;->ah()V

    .line 558
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aN;->T()V

    .line 559
    return-void
.end method

.method public Q()Z
    .registers 2

    .prologue
    .line 562
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aN;->Y()V

    .line 563
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/aN;->i:Z

    return v0
.end method

.method public R()V
    .registers 4

    .prologue
    .line 591
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/aN;->H:Z

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aN;->E:Ljava/lang/Runnable;

    if-nez v0, :cond_1b

    .line 592
    new-instance v0, Lcom/google/android/maps/driveabout/app/aP;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/aP;-><init>(Lcom/google/android/maps/driveabout/app/aN;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/aN;->E:Ljava/lang/Runnable;

    .line 599
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aN;->f:Lm/b;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/aN;->G:Lm/b;

    .line 600
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aN;->E:Ljava/lang/Runnable;

    iget v1, p0, Lcom/google/android/maps/driveabout/app/aN;->c:I

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/maps/driveabout/app/aN;->a(Ljava/lang/Runnable;J)V

    .line 602
    :cond_1b
    return-void
.end method

.method public S()V
    .registers 2

    .prologue
    .line 609
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/aN;->ai()V

    .line 610
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aN;->X()V

    .line 611
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/aN;->j:Z

    .line 612
    return-void
.end method

.method public T()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 626
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aN;->Y()V

    .line 627
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/aN;->i:Z

    if-eqz v0, :cond_1d

    .line 629
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aN;->A:Lo/r;

    invoke-virtual {v0}, Lo/r;->d()V

    .line 630
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aN;->a:Lm/o;

    invoke-virtual {v0}, Lm/o;->d()V

    .line 631
    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/app/aN;->i:Z

    .line 632
    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/app/aN;->j:Z

    .line 633
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aN;->I()Ls/q;

    move-result-object v0

    invoke-virtual {v0}, Ls/q;->E()V

    .line 635
    :cond_1d
    return-void
.end method

.method public U()V
    .registers 2

    .prologue
    .line 642
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/aN;->j:Z

    if-eqz v0, :cond_e

    .line 643
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aN;->T()V

    .line 644
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aN;->I()Ls/q;

    move-result-object v0

    invoke-virtual {v0}, Ls/q;->S()V

    .line 646
    :cond_e
    return-void
.end method

.method public V()V
    .registers 2

    .prologue
    .line 653
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/aN;->H:Z

    if-nez v0, :cond_a

    .line 654
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/aN;->H:Z

    .line 656
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/aN;->ai()V

    .line 658
    :cond_a
    return-void
.end method

.method public W()V
    .registers 2

    .prologue
    .line 665
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/aN;->H:Z

    if-eqz v0, :cond_7

    .line 666
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/aN;->H:Z

    .line 669
    :cond_7
    return-void
.end method

.method protected X()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 676
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aN;->Y()V

    .line 677
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/aN;->i:Z

    if-nez v0, :cond_1d

    .line 679
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aN;->a:Lm/o;

    invoke-virtual {v0}, Lm/o;->f()V

    .line 680
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aN;->A:Lo/r;

    invoke-virtual {v0}, Lo/r;->e()V

    .line 681
    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/app/aN;->i:Z

    .line 682
    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/app/aN;->j:Z

    .line 683
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aN;->I()Ls/q;

    move-result-object v0

    invoke-virtual {v0}, Ls/q;->E()V

    .line 685
    :cond_1d
    return-void
.end method

.method protected Y()V
    .registers 2

    .prologue
    .line 688
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aN;->B:Lcom/google/android/maps/driveabout/app/dD;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/dD;->a()Ls/n;

    move-result-object v0

    invoke-virtual {v0}, Ls/n;->j()V

    .line 689
    return-void
.end method

.method public Z()V
    .registers 2

    .prologue
    .line 705
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aN;->Y()V

    .line 706
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/aN;->k:Z

    .line 707
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aN;->I()Ls/q;

    move-result-object v0

    invoke-virtual {v0}, Ls/q;->E()V

    .line 708
    return-void
.end method

.method public a(F)Ln/ai;
    .registers 3
    .parameter

    .prologue
    .line 252
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aN;->u:Lo/q;

    invoke-virtual {v0, p1}, Lo/q;->a(F)Ln/ai;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 2

    .prologue
    .line 191
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/aN;->b:Lcom/google/android/maps/driveabout/app/NavigationService;

    .line 192
    return-void
.end method

.method public a(I)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 469
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aN;->A:Lo/r;

    invoke-virtual {v0}, Lo/r;->h()V

    .line 470
    iput p1, p0, Lcom/google/android/maps/driveabout/app/aN;->s:I

    .line 471
    iput-object v1, p0, Lcom/google/android/maps/driveabout/app/aN;->v:[Lo/P;

    .line 472
    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/google/android/maps/driveabout/app/aN;->a(ZI)V

    .line 473
    iput-object v1, p0, Lcom/google/android/maps/driveabout/app/aN;->w:[Lo/b;

    .line 474
    invoke-static {}, Lo/q;->a()Lo/q;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/aN;->u:Lo/q;

    .line 475
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aN;->a:Lm/o;

    invoke-virtual {v0, p1}, Lm/o;->a(I)V

    .line 476
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aN;->B:Lcom/google/android/maps/driveabout/app/dD;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/dD;->a()Ls/n;

    move-result-object v0

    invoke-virtual {v0}, Ls/n;->h()V

    .line 477
    return-void
.end method

.method protected a(ILo/g;Lo/q;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 867
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aN;->Y()V

    .line 868
    iput-object p3, p0, Lcom/google/android/maps/driveabout/app/aN;->u:Lo/q;

    .line 869
    if-nez p1, :cond_1f

    .line 870
    const/4 v1, 0x0

    .line 871
    iget-boolean v2, p0, Lcom/google/android/maps/driveabout/app/aN;->z:Z

    if-nez v2, :cond_2f

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aN;->D()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-virtual {p3}, Lo/q;->l()Z

    move-result v2

    if-nez v2, :cond_2f

    .line 873
    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/aN;->z:Z

    .line 875
    :goto_1b
    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/aN;->a(Z)V

    .line 881
    :cond_1e
    :goto_1e
    return-void

    .line 876
    :cond_1f
    if-ne p1, v0, :cond_25

    .line 877
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aN;->aa()V

    goto :goto_1e

    .line 878
    :cond_25
    if-eqz p2, :cond_1e

    .line 879
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aN;->I()Ls/q;

    move-result-object v0

    invoke-virtual {v0, p2}, Ls/q;->b(Lo/g;)V

    goto :goto_1e

    :cond_2f
    move v0, v1

    goto :goto_1b
.end method

.method public a(Lcom/google/android/maps/driveabout/app/NavigationService;Lcom/google/android/maps/driveabout/app/dD;Lo/r;Lm/o;Lcom/google/android/maps/driveabout/app/ad;Lcom/google/android/maps/driveabout/app/a;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 181
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/aN;->b:Lcom/google/android/maps/driveabout/app/NavigationService;

    .line 182
    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/aN;->B:Lcom/google/android/maps/driveabout/app/dD;

    .line 183
    iput-object p5, p0, Lcom/google/android/maps/driveabout/app/aN;->C:Lcom/google/android/maps/driveabout/app/ad;

    .line 184
    iput-object p6, p0, Lcom/google/android/maps/driveabout/app/aN;->D:Lcom/google/android/maps/driveabout/app/a;

    .line 185
    invoke-static {}, Lo/q;->a()Lo/q;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/aN;->u:Lo/q;

    .line 186
    invoke-virtual {p0, p3}, Lcom/google/android/maps/driveabout/app/aN;->a(Lo/r;)V

    .line 187
    invoke-virtual {p0, p4}, Lcom/google/android/maps/driveabout/app/aN;->a(Lm/o;)V

    .line 188
    return-void
.end method

.method protected a(Ljava/lang/Runnable;)V
    .registers 3
    .parameter

    .prologue
    .line 692
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aN;->B:Lcom/google/android/maps/driveabout/app/dD;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/dD;->a(Ljava/lang/Runnable;)V

    .line 693
    return-void
.end method

.method protected a(Ljava/lang/Runnable;J)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 697
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aN;->B:Lcom/google/android/maps/driveabout/app/dD;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/maps/driveabout/app/dD;->a(Ljava/lang/Runnable;J)V

    .line 698
    return-void
.end method

.method public a(Lm/D;)V
    .registers 3
    .parameter

    .prologue
    .line 527
    invoke-virtual {p1}, Lm/D;->c()F

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/app/aN;->g:F

    .line 528
    invoke-virtual {p1}, Lm/D;->d()F

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/app/aN;->h:F

    .line 529
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aN;->I()Ls/q;

    move-result-object v0

    invoke-virtual {v0}, Ls/q;->G()V

    .line 530
    return-void
.end method

.method protected a(Lm/b;)V
    .registers 10
    .parameter

    .prologue
    const/4 v0, 0x0

    const/high16 v3, 0x42c8

    .line 771
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aN;->Y()V

    .line 773
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/aN;->I:Lm/b;

    if-eqz v1, :cond_1b

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aN;->D()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 774
    iget v1, p0, Lcom/google/android/maps/driveabout/app/aN;->J:F

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/aN;->I:Lm/b;

    invoke-virtual {v2, p1}, Lm/b;->distanceTo(Landroid/location/Location;)F

    move-result v2

    add-float/2addr v1, v2

    iput v1, p0, Lcom/google/android/maps/driveabout/app/aN;->J:F

    .line 776
    :cond_1b
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/aN;->I:Lm/b;

    .line 778
    invoke-virtual {p1}, Lm/b;->getProvider()Ljava/lang/String;

    move-result-object v1

    .line 779
    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/aN;->a:Lm/o;

    invoke-virtual {v2, v1}, Lm/o;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_92

    .line 780
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/aN;->f:Lm/b;

    .line 781
    invoke-static {}, Lcom/google/android/maps/driveabout/app/ca;->a()Lcom/google/android/maps/driveabout/app/ca;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/maps/driveabout/app/ca;->a(Lm/b;)V

    .line 782
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aN;->ac()V

    .line 785
    invoke-virtual {p1}, Lm/b;->e()Z

    move-result v1

    if-nez v1, :cond_5e

    .line 786
    const/4 v1, 0x1

    .line 787
    invoke-virtual {p1}, Lm/b;->j()Lo/B;

    move-result-object v2

    if-eqz v2, :cond_9b

    .line 788
    invoke-virtual {p1}, Lm/b;->j()Lo/B;

    move-result-object v2

    invoke-virtual {v2}, Lo/B;->d()D

    move-result-wide v4

    invoke-virtual {p1}, Lm/b;->getLatitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Ln/Q;->a(D)D

    move-result-wide v6

    div-double/2addr v4, v6

    .line 790
    iget-boolean v2, p0, Lcom/google/android/maps/driveabout/app/aN;->o:Z

    if-eqz v2, :cond_8d

    const/high16 v2, 0x42a0

    .line 792
    :goto_59
    float-to-double v6, v2

    cmpg-double v2, v4, v6

    if-gez v2, :cond_9b

    .line 797
    :cond_5e
    :goto_5e
    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/app/aN;->o:Z

    if-eq v0, v1, :cond_6b

    .line 798
    if-eqz v0, :cond_8f

    const-string v1, "o"

    :goto_66
    invoke-static {v1}, Lcom/google/android/maps/driveabout/app/dh;->a(Ljava/lang/String;)V

    .line 800
    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/aN;->o:Z

    .line 803
    :cond_6b
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aN;->G:Lm/b;

    if-eqz v0, :cond_85

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aN;->f:Lm/b;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/aN;->G:Lm/b;

    invoke-virtual {v1}, Lm/b;->m()Ln/s;

    move-result-object v1

    invoke-virtual {v0, v1}, Lm/b;->b(Ln/s;)F

    move-result v0

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_85

    .line 806
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/aN;->ai()V

    .line 807
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aN;->R()V

    .line 810
    :cond_85
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aN;->I()Ls/q;

    move-result-object v0

    invoke-virtual {v0}, Ls/q;->F()V

    .line 816
    :cond_8c
    :goto_8c
    return-void

    :cond_8d
    move v2, v3

    .line 790
    goto :goto_59

    .line 798
    :cond_8f
    const-string v1, "O"

    goto :goto_66

    .line 811
    :cond_92
    const-string v0, "driveabout_base_location"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8c

    goto :goto_8c

    :cond_9b
    move v0, v1

    goto :goto_5e
.end method

.method protected a(Lm/o;)V
    .registers 5
    .parameter

    .prologue
    .line 829
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/aN;->a:Lm/o;

    .line 830
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aN;->a:Lm/o;

    new-instance v1, Lcom/google/android/maps/driveabout/app/aS;

    invoke-direct {v1, p0}, Lcom/google/android/maps/driveabout/app/aS;-><init>(Lcom/google/android/maps/driveabout/app/aN;)V

    invoke-virtual {v0, v1}, Lm/o;->a(Lm/c;)V

    .line 838
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aN;->a:Lm/o;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/aN;->A:Lo/r;

    invoke-virtual {v0, v1}, Lm/o;->a(Lm/c;)V

    .line 839
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aN;->a:Lm/o;

    new-instance v1, Lcom/google/android/maps/driveabout/app/aQ;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/maps/driveabout/app/aQ;-><init>(Lcom/google/android/maps/driveabout/app/aN;Lcom/google/android/maps/driveabout/app/aO;)V

    invoke-virtual {v0, v1}, Lm/o;->a(Lm/t;)V

    .line 840
    return-void
.end method

.method protected a(Lo/q;)V
    .registers 3
    .parameter

    .prologue
    .line 847
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aN;->Y()V

    .line 848
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/aN;->u:Lo/q;

    .line 849
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/aN;->n:Z

    .line 850
    iget v0, p0, Lcom/google/android/maps/driveabout/app/aN;->r:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/app/aN;->r:I

    .line 851
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aN;->I()Ls/q;

    move-result-object v0

    invoke-virtual {v0}, Ls/q;->U()V

    .line 852
    return-void
.end method

.method protected a(Lo/r;)V
    .registers 3
    .parameter

    .prologue
    .line 1026
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/aN;->A:Lo/r;

    .line 1027
    new-instance v0, Lcom/google/android/maps/driveabout/app/aX;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/aX;-><init>(Lcom/google/android/maps/driveabout/app/aN;)V

    invoke-virtual {p1, v0}, Lo/r;->a(Lo/o;)V

    .line 1028
    return-void
.end method

.method public a(Z)V
    .registers 3
    .parameter

    .prologue
    .line 711
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aN;->Y()V

    .line 712
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/aN;->k:Z

    .line 713
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aN;->I()Ls/q;

    move-result-object v0

    invoke-virtual {v0, p1}, Ls/q;->g(Z)V

    .line 714
    return-void
.end method

.method public a([Lo/P;I[Lo/b;Ljava/lang/String;)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 401
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/maps/driveabout/app/aN;->a([Lo/P;I[Lo/b;Ljava/lang/String;Lo/a;)V

    .line 402
    return-void
.end method

.method public a([Lo/P;I[Lo/b;Ljava/lang/String;Lo/a;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 420
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/aN;->v:[Lo/P;

    .line 421
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aN;->D()Z

    move-result v0

    invoke-static {v0, p2}, Lcom/google/android/maps/driveabout/app/aN;->a(ZI)V

    .line 422
    iput p2, p0, Lcom/google/android/maps/driveabout/app/aN;->s:I

    .line 423
    iput-object p3, p0, Lcom/google/android/maps/driveabout/app/aN;->w:[Lo/b;

    .line 424
    iput-object p5, p0, Lcom/google/android/maps/driveabout/app/aN;->y:Lo/a;

    .line 425
    iput-object p4, p0, Lcom/google/android/maps/driveabout/app/aN;->x:Ljava/lang/String;

    .line 426
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aN;->J()V

    .line 427
    return-void
.end method

.method protected a([Lo/R;)V
    .registers 6
    .parameter

    .prologue
    .line 967
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 968
    const/4 v0, 0x1

    :goto_6
    array-length v2, p1

    if-ge v0, v2, :cond_19

    .line 969
    aget-object v2, p1, v0

    invoke-virtual {v2}, Lo/R;->i()Z

    move-result v2

    if-nez v2, :cond_16

    .line 970
    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 968
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 973
    :cond_19
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lo/P;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/P;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/aN;->v:[Lo/P;

    .line 974
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aN;->D()Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/aX;->a(Z)V

    .line 975
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aN;->l()Lo/x;

    move-result-object v0

    invoke-virtual {v0}, Lo/x;->D()[Lo/b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/aN;->w:[Lo/b;

    .line 977
    invoke-static {}, Lo/c;->a()Lo/c;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/aN;->b:Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/NavigationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/aN;->w:[Lo/b;

    invoke-virtual {v0, v1, v2}, Lo/c;->a(Landroid/content/Context;[Lo/b;)V

    .line 981
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aN;->l()Lo/x;

    move-result-object v0

    invoke-virtual {v0}, Lo/x;->g()Z

    move-result v0

    if-eqz v0, :cond_66

    .line 982
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aN;->C:Lcom/google/android/maps/driveabout/app/ad;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aN;->l()Lo/x;

    move-result-object v1

    invoke-virtual {v1}, Lo/x;->l()Lo/P;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aN;->l()Lo/x;

    move-result-object v2

    invoke-virtual {v2}, Lo/x;->m()Lo/P;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/app/ad;->a(Lo/P;Lo/P;)V

    .line 986
    :cond_66
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aN;->b:Lcom/google/android/maps/driveabout/app/NavigationService;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/aN;->v:[Lo/P;

    iget v2, p0, Lcom/google/android/maps/driveabout/app/aN;->s:I

    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/aN;->w:[Lo/b;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/app/NavigationService;->a([Lo/P;I[Lo/b;)V

    .line 987
    return-void
.end method

.method protected aa()V
    .registers 2

    .prologue
    .line 717
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aN;->Y()V

    .line 718
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/aN;->l:Z

    .line 719
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aN;->I()Ls/q;

    move-result-object v0

    invoke-virtual {v0}, Ls/q;->V()V

    .line 720
    return-void
.end method

.method protected ab()Z
    .registers 2

    .prologue
    .line 723
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aN;->a:Lm/o;

    invoke-virtual {v0}, Lm/o;->c()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aN;->f:Lm/b;

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method protected ac()V
    .registers 2

    .prologue
    .line 727
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aN;->Y()V

    .line 728
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aN;->ab()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/aN;->m:Z

    if-nez v0, :cond_11

    .line 729
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aN;->ad()V

    .line 733
    :cond_10
    :goto_10
    return-void

    .line 730
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aN;->ab()Z

    move-result v0

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/aN;->m:Z

    if-eqz v0, :cond_10

    .line 731
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aN;->ae()V

    goto :goto_10
.end method

.method protected ad()V
    .registers 2

    .prologue
    .line 740
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aN;->Y()V

    .line 741
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/aN;->m:Z

    .line 742
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aN;->I()Ls/q;

    move-result-object v0

    invoke-virtual {v0}, Ls/q;->Q()V

    .line 743
    return-void
.end method

.method protected ae()V
    .registers 2

    .prologue
    .line 750
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aN;->Y()V

    .line 751
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/aN;->m:Z

    .line 752
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aN;->I()Ls/q;

    move-result-object v0

    invoke-virtual {v0}, Ls/q;->R()V

    .line 753
    return-void
.end method

.method public af()I
    .registers 2

    .prologue
    .line 1210
    iget v0, p0, Lcom/google/android/maps/driveabout/app/aN;->O:I

    return v0
.end method

.method public ag()F
    .registers 2

    .prologue
    .line 1214
    iget v0, p0, Lcom/google/android/maps/driveabout/app/aN;->J:F

    return v0
.end method

.method public b()Lm/b;
    .registers 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aN;->f:Lm/b;

    return-object v0
.end method

.method public b(I)V
    .registers 2
    .parameter

    .prologue
    .line 495
    iput p1, p0, Lcom/google/android/maps/driveabout/app/aN;->M:I

    .line 496
    return-void
.end method

.method protected b(Ljava/lang/Runnable;)V
    .registers 3
    .parameter

    .prologue
    .line 701
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aN;->B:Lcom/google/android/maps/driveabout/app/dD;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/dD;->b(Ljava/lang/Runnable;)V

    .line 702
    return-void
.end method

.method protected b(Lo/q;)V
    .registers 7
    .parameter

    .prologue
    .line 890
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aN;->Y()V

    .line 893
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aN;->u:Lo/q;

    invoke-virtual {v0}, Lo/q;->h()Lo/I;

    move-result-object v0

    .line 894
    invoke-virtual {p1}, Lo/q;->h()Lo/I;

    move-result-object v1

    .line 895
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/aN;->u:Lo/q;

    .line 899
    iget v2, p0, Lcom/google/android/maps/driveabout/app/aN;->r:I

    if-lez v2, :cond_1d

    invoke-virtual {v1}, Lo/I;->i()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1d

    .line 903
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/maps/driveabout/app/aN;->r:I

    .line 906
    :cond_1d
    if-eqz v1, :cond_26

    .line 908
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aN;->I()Ls/q;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ls/q;->b(Lo/I;Lo/I;)V

    .line 910
    :cond_26
    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/aN;->K:Lcom/google/android/maps/driveabout/app/dj;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/aN;->u:Lo/q;

    invoke-virtual {v3}, Lo/q;->g()Lo/x;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/maps/driveabout/app/aN;->f:Lm/b;

    invoke-virtual {v2, v3, v0, v1, v4}, Lcom/google/android/maps/driveabout/app/dj;->a(Lo/x;Lo/I;Lo/I;Lm/b;)V

    .line 912
    return-void
.end method

.method public c()F
    .registers 2

    .prologue
    .line 203
    iget v0, p0, Lcom/google/android/maps/driveabout/app/aN;->g:F

    return v0
.end method

.method protected c(I)V
    .registers 2
    .parameter

    .prologue
    .line 1017
    iput p1, p0, Lcom/google/android/maps/driveabout/app/aN;->O:I

    .line 1018
    return-void
.end method

.method protected c(Lo/q;)V
    .registers 4
    .parameter

    .prologue
    .line 919
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aN;->Y()V

    .line 920
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/aN;->u:Lo/q;

    .line 921
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aN;->b:Lcom/google/android/maps/driveabout/app/NavigationService;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aN;->b:Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationService;->b()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-virtual {p1}, Lo/q;->d()I

    move-result v0

    if-ltz v0, :cond_24

    invoke-virtual {p1}, Lo/q;->d()I

    move-result v0

    const/16 v1, 0x1f4

    if-ge v0, v1, :cond_24

    .line 923
    iget v0, p0, Lcom/google/android/maps/driveabout/app/aN;->e:I

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/aN;->d(I)V

    .line 925
    :cond_24
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aN;->I()Ls/q;

    move-result-object v0

    invoke-virtual {v0}, Ls/q;->E()V

    .line 926
    return-void
.end method

.method protected d(Lo/q;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 935
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aN;->Y()V

    .line 936
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/aN;->u:Lo/q;

    .line 937
    iput-boolean v2, p0, Lcom/google/android/maps/driveabout/app/aN;->n:Z

    .line 938
    iput-boolean v2, p0, Lcom/google/android/maps/driveabout/app/aN;->p:Z

    .line 939
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aN;->l()Lo/x;

    move-result-object v0

    invoke-virtual {v0}, Lo/x;->a()Z

    move-result v0

    if-nez v0, :cond_28

    .line 940
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/aN;->k:Z

    .line 941
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aN;->D:Lcom/google/android/maps/driveabout/app/a;

    if-eqz v0, :cond_28

    .line 942
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aN;->D:Lcom/google/android/maps/driveabout/app/a;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aN;->l()Lo/x;

    move-result-object v1

    invoke-virtual {v1}, Lo/x;->x()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/a;->a(Ljava/lang/String;)V

    .line 945
    :cond_28
    iput-boolean v2, p0, Lcom/google/android/maps/driveabout/app/aN;->z:Z

    .line 948
    iput-boolean v2, p0, Lcom/google/android/maps/driveabout/app/aN;->l:Z

    .line 949
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aN;->a:Lm/o;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aN;->l()Lo/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lm/o;->a(Lo/x;)V

    .line 950
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aN;->A:Lo/r;

    invoke-virtual {v0}, Lo/r;->d()V

    .line 951
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aN;->I()Ls/q;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aN;->l()Lo/x;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aN;->m()[Lo/x;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ls/q;->b(Lo/x;[Lo/x;)V

    .line 952
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aN;->I()Ls/q;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aN;->k()Lo/I;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ls/q;->b(Lo/I;Lo/I;)V

    .line 958
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aN;->l()Lo/x;

    move-result-object v0

    invoke-virtual {v0}, Lo/x;->b()Z

    move-result v0

    if-nez v0, :cond_6a

    .line 959
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aN;->l()Lo/x;

    move-result-object v0

    invoke-virtual {v0}, Lo/x;->v()[Lo/R;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/aN;->a([Lo/R;)V

    .line 961
    :cond_6a
    return-void
.end method

.method public d()Z
    .registers 3

    .prologue
    .line 212
    iget v0, p0, Lcom/google/android/maps/driveabout/app/aN;->g:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public e()V
    .registers 2

    .prologue
    .line 222
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/aN;->y:Lo/a;

    .line 223
    return-void
.end method

.method protected e(Lo/q;)V
    .registers 3
    .parameter

    .prologue
    .line 996
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aN;->Y()V

    .line 997
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/aN;->u:Lo/q;

    .line 998
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/aN;->n:Z

    .line 999
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/aN;->p:Z

    .line 1000
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aN;->I()Ls/q;

    move-result-object v0

    invoke-virtual {v0}, Ls/q;->W()V

    .line 1001
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aN;->b:Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationService;->b()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1002
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/aN;->ah()V

    .line 1003
    iget v0, p0, Lcom/google/android/maps/driveabout/app/aN;->d:I

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/aN;->d(I)V

    .line 1005
    :cond_22
    return-void
.end method

.method public f()Lo/a;
    .registers 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aN;->y:Lo/a;

    return-object v0
.end method

.method protected f(Lo/q;)V
    .registers 4
    .parameter

    .prologue
    .line 1011
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aN;->Y()V

    .line 1012
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/aN;->u:Lo/q;

    .line 1013
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aN;->I()Ls/q;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/aN;->u:Lo/q;

    invoke-virtual {v1}, Lo/q;->k()I

    move-result v1

    invoke-virtual {v0, v1}, Ls/q;->a(I)V

    .line 1014
    return-void
.end method

.method public g()I
    .registers 2

    .prologue
    .line 240
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aN;->u:Lo/q;

    invoke-virtual {v0}, Lo/q;->c()I

    move-result v0

    return v0
.end method

.method public h()I
    .registers 2

    .prologue
    .line 244
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aN;->u:Lo/q;

    invoke-virtual {v0}, Lo/q;->b()I

    move-result v0

    return v0
.end method

.method public i()I
    .registers 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aN;->u:Lo/q;

    invoke-virtual {v0}, Lo/q;->d()I

    move-result v0

    return v0
.end method

.method public j()Z
    .registers 2

    .prologue
    .line 256
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/aN;->m:Z

    return v0
.end method

.method public k()Lo/I;
    .registers 2

    .prologue
    .line 264
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aN;->u:Lo/q;

    invoke-virtual {v0}, Lo/q;->h()Lo/I;

    move-result-object v0

    return-object v0
.end method

.method public l()Lo/x;
    .registers 2

    .prologue
    .line 269
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aN;->u:Lo/q;

    invoke-virtual {v0}, Lo/q;->g()Lo/x;

    move-result-object v0

    return-object v0
.end method

.method public m()[Lo/x;
    .registers 2

    .prologue
    .line 277
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aN;->u:Lo/q;

    invoke-virtual {v0}, Lo/q;->f()[Lo/x;

    move-result-object v0

    return-object v0
.end method

.method public n()Lo/x;
    .registers 2

    .prologue
    .line 284
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aN;->u:Lo/q;

    invoke-virtual {v0}, Lo/q;->i()Lo/x;

    move-result-object v0

    return-object v0
.end method

.method public o()Z
    .registers 2

    .prologue
    .line 288
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aN;->u:Lo/q;

    invoke-virtual {v0}, Lo/q;->j()Z

    move-result v0

    return v0
.end method

.method public p()I
    .registers 2

    .prologue
    .line 292
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aN;->u:Lo/q;

    invoke-virtual {v0}, Lo/q;->k()I

    move-result v0

    return v0
.end method

.method public q()Z
    .registers 2

    .prologue
    .line 296
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/aN;->p:Z

    return v0
.end method

.method public r()Z
    .registers 2

    .prologue
    .line 300
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/aN;->q:Z

    return v0
.end method

.method public s()I
    .registers 5

    .prologue
    .line 304
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/maps/driveabout/app/aN;->t:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public t()V
    .registers 3

    .prologue
    .line 308
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/aN;->q:Z

    .line 309
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/app/aN;->t:J

    .line 310
    return-void
.end method

.method public u()V
    .registers 2

    .prologue
    .line 313
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/aN;->q:Z

    .line 314
    return-void
.end method

.method public v()Z
    .registers 2

    .prologue
    .line 317
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aN;->u:Lo/q;

    invoke-virtual {v0}, Lo/q;->l()Z

    move-result v0

    if-nez v0, :cond_16

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/aN;->n:Z

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/aN;->k:Z

    if-nez v0, :cond_16

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/aN;->l:Z

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public w()Z
    .registers 2

    .prologue
    .line 322
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/aN;->o:Z

    return v0
.end method

.method public x()Z
    .registers 2

    .prologue
    .line 328
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/aN;->n:Z

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aN;->u:Lo/q;

    invoke-virtual {v0}, Lo/q;->l()Z

    move-result v0

    if-nez v0, :cond_16

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/aN;->k:Z

    if-nez v0, :cond_14

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/aN;->l:Z

    if-nez v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public y()Z
    .registers 2

    .prologue
    .line 333
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aN;->v()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/aN;->m:Z

    if-nez v0, :cond_1c

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aN;->l()Lo/x;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aN;->l()Lo/x;

    move-result-object v0

    invoke-virtual {v0}, Lo/x;->j()Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_1a
    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public z()Z
    .registers 2

    .prologue
    .line 339
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aN;->m()[Lo/x;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aN;->m()[Lo/x;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_1b

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aN;->l()Lo/x;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aN;->q()Z

    move-result v0

    if-nez v0, :cond_1b

    const/4 v0, 0x1

    :goto_1a
    return v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method
