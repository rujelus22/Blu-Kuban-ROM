.class public final LL/i;
.super Lbk/k;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:J

.field private c:LL/d;

.field private d:Ljava/lang/Object;

.field private e:Ljava/lang/Object;

.field private f:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 411
    invoke-direct {p0}, Lbk/k;-><init>()V

    .line 563
    invoke-static {}, LL/d;->a()LL/d;

    move-result-object v0

    iput-object v0, p0, LL/i;->c:LL/d;

    .line 624
    const-string v0, ""

    iput-object v0, p0, LL/i;->d:Ljava/lang/Object;

    .line 698
    const-string v0, ""

    iput-object v0, p0, LL/i;->e:Ljava/lang/Object;

    .line 772
    const-string v0, ""

    iput-object v0, p0, LL/i;->f:Ljava/lang/Object;

    .line 412
    invoke-direct {p0}, LL/i;->h()V

    .line 413
    return-void
.end method

.method static synthetic g()LL/i;
    .registers 1

    .prologue
    .line 406
    invoke-static {}, LL/i;->i()LL/i;

    move-result-object v0

    return-object v0
.end method

.method private h()V
    .registers 1

    .prologue
    .line 416
    return-void
.end method

.method private static i()LL/i;
    .registers 1

    .prologue
    .line 418
    new-instance v0, LL/i;

    invoke-direct {v0}, LL/i;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a()LL/i;
    .registers 3

    .prologue
    .line 437
    invoke-static {}, LL/i;->i()LL/i;

    move-result-object v0

    invoke-virtual {p0}, LL/i;->c()LL/g;

    move-result-object v1

    invoke-virtual {v0, v1}, LL/i;->a(LL/g;)LL/i;

    move-result-object v0

    return-object v0
.end method

.method public a(J)LL/i;
    .registers 4
    .parameter

    .prologue
    .line 547
    iget v0, p0, LL/i;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, LL/i;->a:I

    .line 548
    iput-wide p1, p0, LL/i;->b:J

    .line 550
    return-object p0
.end method

.method public a(LL/d;)LL/i;
    .registers 4
    .parameter

    .prologue
    .line 602
    iget v0, p0, LL/i;->a:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_26

    iget-object v0, p0, LL/i;->c:LL/d;

    invoke-static {}, LL/d;->a()LL/d;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 604
    iget-object v0, p0, LL/i;->c:LL/d;

    invoke-static {v0}, LL/d;->a(LL/d;)LL/f;

    move-result-object v0

    invoke-virtual {v0, p1}, LL/f;->a(LL/d;)LL/f;

    move-result-object v0

    invoke-virtual {v0}, LL/f;->c()LL/d;

    move-result-object v0

    iput-object v0, p0, LL/i;->c:LL/d;

    .line 610
    :goto_1f
    iget v0, p0, LL/i;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, LL/i;->a:I

    .line 611
    return-object p0

    .line 607
    :cond_26
    iput-object p1, p0, LL/i;->c:LL/d;

    goto :goto_1f
.end method

.method public a(LL/f;)LL/i;
    .registers 3
    .parameter

    .prologue
    .line 593
    invoke-virtual {p1}, LL/f;->b()LL/d;

    move-result-object v0

    iput-object v0, p0, LL/i;->c:LL/d;

    .line 595
    iget v0, p0, LL/i;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, LL/i;->a:I

    .line 596
    return-object p0
.end method

.method public a(LL/g;)LL/i;
    .registers 4
    .parameter

    .prologue
    .line 481
    invoke-static {}, LL/g;->a()LL/g;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 503
    :cond_6
    :goto_6
    return-object p0

    .line 482
    :cond_7
    invoke-virtual {p1}, LL/g;->b()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 483
    invoke-virtual {p1}, LL/g;->c()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, LL/i;->a(J)LL/i;

    .line 485
    :cond_14
    invoke-virtual {p1}, LL/g;->d()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 486
    invoke-virtual {p1}, LL/g;->e()LL/d;

    move-result-object v0

    invoke-virtual {p0, v0}, LL/i;->a(LL/d;)LL/i;

    .line 488
    :cond_21
    invoke-virtual {p1}, LL/g;->f()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 489
    iget v0, p0, LL/i;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, LL/i;->a:I

    .line 490
    invoke-static {p1}, LL/g;->b(LL/g;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, LL/i;->d:Ljava/lang/Object;

    .line 493
    :cond_33
    invoke-virtual {p1}, LL/g;->i()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 494
    iget v0, p0, LL/i;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, LL/i;->a:I

    .line 495
    invoke-static {p1}, LL/g;->c(LL/g;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, LL/i;->e:Ljava/lang/Object;

    .line 498
    :cond_45
    invoke-virtual {p1}, LL/g;->l()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 499
    iget v0, p0, LL/i;->a:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, LL/i;->a:I

    .line 500
    invoke-static {p1}, LL/g;->d(LL/g;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, LL/i;->f:Ljava/lang/Object;

    goto :goto_6
.end method

.method public a(Lbk/f;Lbk/i;)LL/i;
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 514
    const/4 v2, 0x0

    .line 516
    :try_start_1
    sget-object v0, LL/g;->a:Lbk/r;

    invoke-interface {v0, p1, p2}, Lbk/r;->b(Lbk/f;Lbk/i;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LL/g;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_22
    .catch Lbk/l; {:try_start_1 .. :try_end_9} :catch_f

    .line 521
    if-eqz v0, :cond_e

    .line 522
    invoke-virtual {p0, v0}, LL/i;->a(LL/g;)LL/i;

    .line 525
    :cond_e
    return-object p0

    .line 517
    :catch_f
    move-exception v0

    move-object v1, v0

    .line 518
    :try_start_11
    invoke-virtual {v1}, Lbk/l;->a()Lbk/p;

    move-result-object v0

    check-cast v0, LL/g;
    :try_end_17
    .catchall {:try_start_11 .. :try_end_17} :catchall_22

    .line 519
    :try_start_17
    throw v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_18

    .line 521
    :catchall_18
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_1c
    if-eqz v1, :cond_21

    .line 522
    invoke-virtual {p0, v1}, LL/i;->a(LL/g;)LL/i;

    :cond_21
    throw v0

    .line 521
    :catchall_22
    move-exception v0

    move-object v1, v2

    goto :goto_1c
.end method

.method public a(Ljava/lang/String;)LL/i;
    .registers 3
    .parameter

    .prologue
    .line 666
    if-nez p1, :cond_8

    .line 667
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 669
    :cond_8
    iget v0, p0, LL/i;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, LL/i;->a:I

    .line 670
    iput-object p1, p0, LL/i;->d:Ljava/lang/Object;

    .line 672
    return-object p0
.end method

.method public b()LL/g;
    .registers 3

    .prologue
    .line 445
    invoke-virtual {p0}, LL/i;->c()LL/g;

    move-result-object v0

    .line 446
    invoke-virtual {v0}, LL/g;->n()Z

    move-result v1

    if-nez v1, :cond_f

    .line 447
    invoke-static {v0}, LL/i;->a(Lbk/p;)Lbk/x;

    move-result-object v0

    throw v0

    .line 449
    :cond_f
    return-object v0
.end method

.method public b(Ljava/lang/String;)LL/i;
    .registers 3
    .parameter

    .prologue
    .line 740
    if-nez p1, :cond_8

    .line 741
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 743
    :cond_8
    iget v0, p0, LL/i;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, LL/i;->a:I

    .line 744
    iput-object p1, p0, LL/i;->e:Ljava/lang/Object;

    .line 746
    return-object p0
.end method

.method public synthetic b(Lbk/f;Lbk/i;)Lbk/b;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 406
    invoke-virtual {p0, p1, p2}, LL/i;->a(Lbk/f;Lbk/i;)LL/i;

    move-result-object v0

    return-object v0
.end method

.method public c()LL/g;
    .registers 7

    .prologue
    const/4 v0, 0x1

    .line 453
    new-instance v2, LL/g;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, LL/g;-><init>(Lbk/k;LL/h;)V

    .line 454
    iget v3, p0, LL/i;->a:I

    .line 455
    const/4 v1, 0x0

    .line 456
    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_49

    .line 459
    :goto_e
    iget-wide v4, p0, LL/i;->b:J

    invoke-static {v2, v4, v5}, LL/g;->a(LL/g;J)J

    .line 460
    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1a

    .line 461
    or-int/lit8 v0, v0, 0x2

    .line 463
    :cond_1a
    iget-object v1, p0, LL/i;->c:LL/d;

    invoke-static {v2, v1}, LL/g;->a(LL/g;LL/d;)LL/d;

    .line 464
    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_26

    .line 465
    or-int/lit8 v0, v0, 0x4

    .line 467
    :cond_26
    iget-object v1, p0, LL/i;->d:Ljava/lang/Object;

    invoke-static {v2, v1}, LL/g;->a(LL/g;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    and-int/lit8 v1, v3, 0x8

    const/16 v4, 0x8

    if-ne v1, v4, :cond_33

    .line 469
    or-int/lit8 v0, v0, 0x8

    .line 471
    :cond_33
    iget-object v1, p0, LL/i;->e:Ljava/lang/Object;

    invoke-static {v2, v1}, LL/g;->b(LL/g;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    and-int/lit8 v1, v3, 0x10

    const/16 v3, 0x10

    if-ne v1, v3, :cond_40

    .line 473
    or-int/lit8 v0, v0, 0x10

    .line 475
    :cond_40
    iget-object v1, p0, LL/i;->f:Ljava/lang/Object;

    invoke-static {v2, v1}, LL/g;->c(LL/g;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    invoke-static {v2, v0}, LL/g;->a(LL/g;I)I

    .line 477
    return-object v2

    :cond_49
    move v0, v1

    goto :goto_e
.end method

.method public c(Ljava/lang/String;)LL/i;
    .registers 3
    .parameter

    .prologue
    .line 814
    if-nez p1, :cond_8

    .line 815
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 817
    :cond_8
    iget v0, p0, LL/i;->a:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, LL/i;->a:I

    .line 818
    iput-object p1, p0, LL/i;->f:Ljava/lang/Object;

    .line 820
    return-object p0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 406
    invoke-virtual {p0}, LL/i;->a()LL/i;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d()Lbk/k;
    .registers 2

    .prologue
    .line 406
    invoke-virtual {p0}, LL/i;->a()LL/i;

    move-result-object v0

    return-object v0
.end method

.method public synthetic e()Lbk/b;
    .registers 2

    .prologue
    .line 406
    invoke-virtual {p0}, LL/i;->a()LL/i;

    move-result-object v0

    return-object v0
.end method

.method public synthetic f()Lbk/p;
    .registers 2

    .prologue
    .line 406
    invoke-virtual {p0}, LL/i;->b()LL/g;

    move-result-object v0

    return-object v0
.end method
