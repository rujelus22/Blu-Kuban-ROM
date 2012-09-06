.class public Lcom/google/googlenav/friend/t;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/googlenav/android/Y;

.field private final b:Lcom/google/googlenav/ui/v;

.field private final c:Lat/u;

.field private final d:Lcom/google/googlenav/ui/friend/q;

.field private final e:LaM/X;

.field private final f:Lcom/google/googlenav/friend/p;

.field private final g:Lcom/google/googlenav/ui/wizard/ju;

.field private h:Lcom/google/googlenav/friend/L;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/android/Y;Lcom/google/googlenav/ui/v;Lat/u;Lcom/google/googlenav/ui/friend/q;LaM/X;Lcom/google/googlenav/friend/p;Lcom/google/googlenav/ui/wizard/ju;)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/google/googlenav/friend/t;->a:Lcom/google/googlenav/android/Y;

    .line 75
    iput-object p2, p0, Lcom/google/googlenav/friend/t;->b:Lcom/google/googlenav/ui/v;

    .line 76
    iput-object p3, p0, Lcom/google/googlenav/friend/t;->c:Lat/u;

    .line 77
    iput-object p4, p0, Lcom/google/googlenav/friend/t;->d:Lcom/google/googlenav/ui/friend/q;

    .line 78
    iput-object p5, p0, Lcom/google/googlenav/friend/t;->e:LaM/X;

    .line 79
    iput-object p6, p0, Lcom/google/googlenav/friend/t;->f:Lcom/google/googlenav/friend/p;

    .line 80
    iput-object p7, p0, Lcom/google/googlenav/friend/t;->g:Lcom/google/googlenav/ui/wizard/ju;

    .line 81
    new-instance v0, Lcom/google/googlenav/friend/D;

    invoke-direct {v0, p0}, Lcom/google/googlenav/friend/D;-><init>(Lcom/google/googlenav/friend/t;)V

    iput-object v0, p0, Lcom/google/googlenav/friend/t;->h:Lcom/google/googlenav/friend/L;

    .line 82
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/friend/t;)Lcom/google/googlenav/android/Y;
    .registers 2
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/googlenav/friend/t;->a:Lcom/google/googlenav/android/Y;

    return-object v0
.end method

.method private a(Lcom/google/googlenav/a;)V
    .registers 4
    .parameter

    .prologue
    .line 420
    :try_start_0
    invoke-static {p1}, Lcom/google/googlenav/b;->a(Lcom/google/googlenav/a;)Lcom/google/googlenav/bc;

    move-result-object v0

    .line 421
    iget-object v1, p0, Lcom/google/googlenav/friend/t;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/v;->a(Lcom/google/googlenav/bc;)V
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_9} :catch_f

    .line 427
    :goto_9
    const-string v0, "cp"

    invoke-static {v0}, Lcom/google/googlenav/friend/af;->e(Ljava/lang/String;)V

    .line 428
    return-void

    .line 422
    :catch_f
    move-exception v0

    .line 425
    iget-object v0, p0, Lcom/google/googlenav/friend/t;->e:LaM/X;

    invoke-virtual {v0}, LaM/X;->bE()Lcom/google/googlenav/friend/aK;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/friend/t;->b(Lcom/google/googlenav/friend/aK;)V

    goto :goto_9
.end method

.method private a(Lcom/google/googlenav/friend/aK;)V
    .registers 9
    .parameter

    .prologue
    .line 439
    invoke-virtual {p1}, Lcom/google/googlenav/friend/aK;->n()Ljava/lang/Long;

    move-result-object v0

    .line 440
    invoke-virtual {p1}, Lcom/google/googlenav/friend/aK;->f()Ljava/lang/String;

    move-result-object v1

    .line 441
    new-instance v2, Lcom/google/googlenav/friend/z;

    invoke-direct {v2, p0, v1}, Lcom/google/googlenav/friend/z;-><init>(Lcom/google/googlenav/friend/t;Ljava/lang/String;)V

    .line 454
    iget-object v3, p0, Lcom/google/googlenav/friend/t;->b:Lcom/google/googlenav/ui/v;

    const/16 v4, 0x17c

    invoke-static {v4}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-static {v4, v5}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/google/googlenav/ui/v;->a(Ljava/lang/String;)V

    .line 457
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v1

    new-instance v3, Lcom/google/googlenav/friend/aD;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {v3, v4, v5, v2}, Lcom/google/googlenav/friend/aD;-><init>(JLcom/google/googlenav/friend/aE;)V

    invoke-virtual {v1, v3}, Lac/h;->c(Lac/g;)V

    .line 460
    const/16 v0, 0x3d

    const-string v1, "pa"

    invoke-static {v0, v1}, LaT/k;->a(ILjava/lang/String;)V

    .line 462
    return-void
.end method

.method private a(Lcom/google/googlenav/friend/aK;Z)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 538
    .line 540
    if-eqz p2, :cond_26

    .line 541
    new-instance v1, Lcom/google/googlenav/common/f;

    invoke-direct {v1}, Lcom/google/googlenav/common/f;-><init>()V

    .line 542
    invoke-virtual {p1}, Lcom/google/googlenav/friend/aK;->n()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/googlenav/common/f;->a(J)V

    .line 549
    :goto_13
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v2

    new-instance v3, Lcom/google/googlenav/friend/bz;

    invoke-direct {v3, v0, v1}, Lcom/google/googlenav/friend/bz;-><init>(Lcom/google/googlenav/common/f;Lcom/google/googlenav/common/f;)V

    invoke-virtual {v2, v3}, Lac/h;->c(Lac/g;)V

    .line 554
    if-nez p2, :cond_3a

    const/4 v0, 0x1

    :goto_22
    invoke-virtual {p1, v0}, Lcom/google/googlenav/friend/aK;->a(Z)V

    .line 555
    return-void

    .line 544
    :cond_26
    new-instance v1, Lcom/google/googlenav/common/f;

    invoke-direct {v1}, Lcom/google/googlenav/common/f;-><init>()V

    .line 545
    invoke-virtual {p1}, Lcom/google/googlenav/friend/aK;->n()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/googlenav/common/f;->a(J)V

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_13

    .line 554
    :cond_3a
    const/4 v0, 0x0

    goto :goto_22
.end method

.method static synthetic a(Lcom/google/googlenav/friend/t;Lcom/google/googlenav/friend/aK;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/google/googlenav/friend/t;->e(Lcom/google/googlenav/friend/aK;)V

    return-void
.end method

.method private a(Lcom/google/googlenav/h;)V
    .registers 4
    .parameter

    .prologue
    .line 431
    new-instance v0, Lcom/google/googlenav/ui/wizard/ep;

    invoke-direct {v0}, Lcom/google/googlenav/ui/wizard/ep;-><init>()V

    .line 432
    iget-object v1, p0, Lcom/google/googlenav/friend/t;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/v;->m()LaM/a;

    move-result-object v1

    iput-object v1, v0, Lcom/google/googlenav/ui/wizard/ep;->d:LaM/a;

    .line 433
    iput-object p1, v0, Lcom/google/googlenav/ui/wizard/ep;->a:Lcom/google/googlenav/h;

    .line 434
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/googlenav/ui/wizard/ep;->c:Z

    .line 435
    iget-object v1, p0, Lcom/google/googlenav/friend/t;->g:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/wizard/ju;->a(Lcom/google/googlenav/ui/wizard/ep;)V

    .line 436
    return-void
.end method

.method static synthetic b(Lcom/google/googlenav/friend/t;)LaM/X;
    .registers 2
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/googlenav/friend/t;->e:LaM/X;

    return-object v0
.end method

.method private b()V
    .registers 2

    .prologue
    .line 352
    iget-object v0, p0, Lcom/google/googlenav/friend/t;->e:LaM/X;

    invoke-virtual {v0}, LaM/X;->R()V

    .line 353
    iget-object v0, p0, Lcom/google/googlenav/friend/t;->e:LaM/X;

    invoke-virtual {v0}, LaM/X;->j()V

    .line 354
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->as()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 355
    iget-object v0, p0, Lcom/google/googlenav/friend/t;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->n()Lcom/google/googlenav/ui/av;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/av;->b()V

    .line 357
    :cond_1d
    return-void
.end method

.method private b(Lcom/google/googlenav/friend/aK;)V
    .registers 4
    .parameter

    .prologue
    .line 465
    iget-object v0, p0, Lcom/google/googlenav/friend/t;->e:LaM/X;

    invoke-virtual {v0}, LaM/X;->o()B

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_30

    .line 466
    invoke-static {}, Lcom/google/googlenav/friend/af;->a()V

    .line 472
    :goto_c
    iget-object v0, p0, Lcom/google/googlenav/friend/t;->e:LaM/X;

    invoke-virtual {v0, p1}, LaM/X;->a(Lcom/google/googlenav/friend/aK;)V

    .line 473
    iget-object v0, p0, Lcom/google/googlenav/friend/t;->e:LaM/X;

    invoke-virtual {v0}, LaM/X;->bI()V

    .line 474
    iget-object v0, p0, Lcom/google/googlenav/friend/t;->e:LaM/X;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LaM/X;->a(B)V

    .line 478
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->as()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 479
    iget-object v0, p0, Lcom/google/googlenav/friend/t;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->n()Lcom/google/googlenav/ui/av;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/av;->b()V

    .line 481
    :cond_2f
    return-void

    .line 468
    :cond_30
    invoke-static {}, Lcom/google/googlenav/friend/af;->b()V

    goto :goto_c
.end method

.method private b(Lcom/google/googlenav/friend/aK;Z)V
    .registers 13
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 559
    invoke-virtual {p1}, Lcom/google/googlenav/friend/aK;->k()Z

    move-result v0

    if-nez v0, :cond_27

    .line 560
    new-instance v0, Lcom/google/googlenav/common/f;

    invoke-direct {v0}, Lcom/google/googlenav/common/f;-><init>()V

    .line 561
    invoke-virtual {p1}, Lcom/google/googlenav/friend/aK;->n()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/googlenav/common/f;->a(J)V

    .line 564
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v2

    new-instance v3, Lcom/google/googlenav/friend/bz;

    invoke-direct {v3, v0, v1}, Lcom/google/googlenav/friend/bz;-><init>(Lcom/google/googlenav/common/f;Lcom/google/googlenav/common/f;)V

    invoke-virtual {v2, v3}, Lac/h;->c(Lac/g;)V

    .line 568
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/googlenav/friend/aK;->a(Z)V

    .line 573
    :cond_27
    if-eqz p2, :cond_4f

    .line 574
    new-instance v7, Lcom/google/googlenav/common/f;

    invoke-direct {v7}, Lcom/google/googlenav/common/f;-><init>()V

    .line 575
    invoke-virtual {p1}, Lcom/google/googlenav/friend/aK;->n()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v7, v2, v3}, Lcom/google/googlenav/common/f;->a(J)V

    move-object v8, v1

    .line 582
    :goto_3a
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v9

    new-instance v0, Lcom/google/googlenav/friend/by;

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    invoke-direct/range {v0 .. v8}, Lcom/google/googlenav/friend/by;-><init>(Lcom/google/googlenav/common/f;Ljava/util/Vector;Ljava/util/Vector;Lcom/google/googlenav/common/f;Lcom/google/googlenav/common/f;Lcom/google/googlenav/common/f;Lcom/google/googlenav/common/f;Lcom/google/googlenav/common/f;)V

    invoke-virtual {v9, v0}, Lac/h;->c(Lac/g;)V

    .line 588
    invoke-virtual {p1, p2}, Lcom/google/googlenav/friend/aK;->b(Z)V

    .line 589
    return-void

    .line 577
    :cond_4f
    new-instance v8, Lcom/google/googlenav/common/f;

    invoke-direct {v8}, Lcom/google/googlenav/common/f;-><init>()V

    .line 578
    invoke-virtual {p1}, Lcom/google/googlenav/friend/aK;->n()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v8, v2, v3}, Lcom/google/googlenav/common/f;->a(J)V

    move-object v7, v1

    goto :goto_3a
.end method

.method static synthetic b(Lcom/google/googlenav/friend/t;Lcom/google/googlenav/friend/aK;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/google/googlenav/friend/t;->c(Lcom/google/googlenav/friend/aK;)V

    return-void
.end method

.method static synthetic c(Lcom/google/googlenav/friend/t;)Lcom/google/googlenav/ui/friend/q;
    .registers 2
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/googlenav/friend/t;->d:Lcom/google/googlenav/ui/friend/q;

    return-object v0
.end method

.method private c()V
    .registers 5

    .prologue
    .line 360
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/friend/P;

    new-instance v2, Lcom/google/googlenav/common/f;

    invoke-direct {v2}, Lcom/google/googlenav/common/f;-><init>()V

    new-instance v3, Lcom/google/googlenav/friend/w;

    invoke-direct {v3, p0}, Lcom/google/googlenav/friend/w;-><init>(Lcom/google/googlenav/friend/t;)V

    invoke-direct {v1, v2, v3}, Lcom/google/googlenav/friend/P;-><init>(Lcom/google/googlenav/common/f;Lcom/google/googlenav/friend/Q;)V

    invoke-virtual {v0, v1}, Lac/h;->c(Lac/g;)V

    .line 376
    return-void
.end method

.method private c(Lcom/google/googlenav/friend/aK;)V
    .registers 3
    .parameter

    .prologue
    .line 484
    iget-object v0, p0, Lcom/google/googlenav/friend/t;->e:LaM/X;

    invoke-virtual {v0, p1}, LaM/X;->a(Lcom/google/googlenav/friend/aK;)V

    .line 485
    iget-object v0, p0, Lcom/google/googlenav/friend/t;->e:LaM/X;

    invoke-virtual {v0}, LaM/X;->bJ()V

    .line 486
    return-void
.end method

.method static synthetic d(Lcom/google/googlenav/friend/t;)Lcom/google/googlenav/ui/v;
    .registers 2
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/googlenav/friend/t;->b:Lcom/google/googlenav/ui/v;

    return-object v0
.end method

.method private d()V
    .registers 9

    .prologue
    .line 380
    invoke-static {}, LaM/ch;->a()V

    .line 381
    invoke-static {}, Lar/c;->a()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 382
    iget-object v0, p0, Lcom/google/googlenav/friend/t;->g:Lcom/google/googlenav/ui/wizard/ju;

    const/16 v1, 0x1aa

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1a7

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1a8

    invoke-static {v3}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xfa

    invoke-static {v4}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    new-instance v7, Lcom/google/googlenav/friend/x;

    invoke-direct {v7, p0}, Lcom/google/googlenav/friend/x;-><init>(Lcom/google/googlenav/friend/t;)V

    invoke-virtual/range {v0 .. v7}, Lcom/google/googlenav/ui/wizard/ju;->a(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/google/googlenav/ui/wizard/bn;)V

    .line 416
    :cond_2d
    return-void
.end method

.method private d(Lcom/google/googlenav/friend/aK;)V
    .registers 10
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 489
    invoke-static {}, Lcom/google/googlenav/friend/af;->f()V

    .line 491
    const/16 v0, 0x192

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/google/googlenav/friend/aK;->f()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v1}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 494
    const/16 v0, 0x191

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    .line 495
    iget-object v0, p0, Lcom/google/googlenav/friend/t;->g:Lcom/google/googlenav/ui/wizard/ju;

    new-instance v7, Lcom/google/googlenav/friend/A;

    invoke-direct {v7, p0, p1}, Lcom/google/googlenav/friend/A;-><init>(Lcom/google/googlenav/friend/t;Lcom/google/googlenav/friend/aK;)V

    move-object v4, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v7}, Lcom/google/googlenav/ui/wizard/ju;->a(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/google/googlenav/ui/wizard/bn;)V

    .line 512
    return-void
.end method

.method static synthetic e(Lcom/google/googlenav/friend/t;)Lcom/google/googlenav/friend/p;
    .registers 2
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/googlenav/friend/t;->f:Lcom/google/googlenav/friend/p;

    return-object v0
.end method

.method private e()V
    .registers 4

    .prologue
    .line 592
    iget-object v0, p0, Lcom/google/googlenav/friend/t;->e:LaM/X;

    invoke-virtual {v0}, LaM/X;->c()Lcom/google/googlenav/friend/aM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/friend/aM;->e()Ljava/util/List;

    move-result-object v0

    .line 595
    iget-object v1, p0, Lcom/google/googlenav/friend/t;->g:Lcom/google/googlenav/ui/wizard/ju;

    new-instance v2, Lcom/google/googlenav/friend/B;

    invoke-direct {v2, p0, v0}, Lcom/google/googlenav/friend/B;-><init>(Lcom/google/googlenav/friend/t;Ljava/util/List;)V

    invoke-virtual {v1, v0, v2}, Lcom/google/googlenav/ui/wizard/ju;->a(Ljava/util/List;Lcom/google/googlenav/ui/wizard/cK;)V

    .line 633
    return-void
.end method

.method private e(Lcom/google/googlenav/friend/aK;)V
    .registers 12
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 515
    new-instance v5, Lcom/google/googlenav/common/f;

    invoke-direct {v5}, Lcom/google/googlenav/common/f;-><init>()V

    .line 516
    invoke-virtual {p1}, Lcom/google/googlenav/friend/aK;->n()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v5, v2, v3}, Lcom/google/googlenav/common/f;->a(J)V

    .line 518
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v9

    new-instance v0, Lcom/google/googlenav/friend/by;

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v6, v1

    move-object v7, v1

    move-object v8, v1

    invoke-direct/range {v0 .. v8}, Lcom/google/googlenav/friend/by;-><init>(Lcom/google/googlenav/common/f;Ljava/util/Vector;Ljava/util/Vector;Lcom/google/googlenav/common/f;Lcom/google/googlenav/common/f;Lcom/google/googlenav/common/f;Lcom/google/googlenav/common/f;Lcom/google/googlenav/common/f;)V

    invoke-virtual {v9, v0}, Lac/h;->c(Lac/g;)V

    .line 521
    invoke-direct {p0, p1}, Lcom/google/googlenav/friend/t;->f(Lcom/google/googlenav/friend/aK;)V

    .line 522
    return-void
.end method

.method private f()V
    .registers 2

    .prologue
    .line 639
    invoke-static {}, Lcom/google/googlenav/friend/af;->d()V

    .line 644
    iget-object v0, p0, Lcom/google/googlenav/friend/t;->g:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->d()V

    .line 645
    return-void
.end method

.method private f(Lcom/google/googlenav/friend/aK;)V
    .registers 4
    .parameter

    .prologue
    .line 526
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/google/googlenav/friend/aK;->a(I)V

    .line 527
    invoke-virtual {p1}, Lcom/google/googlenav/friend/aK;->y()V

    .line 530
    iget-object v0, p0, Lcom/google/googlenav/friend/t;->e:LaM/X;

    invoke-virtual {v0}, LaM/X;->J()V

    .line 532
    iget-object v0, p0, Lcom/google/googlenav/friend/t;->e:LaM/X;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, LaM/X;->a(B)V

    .line 533
    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 652
    invoke-static {}, Lcom/google/googlenav/friend/af;->e()V

    .line 657
    iget-object v0, p0, Lcom/google/googlenav/friend/t;->g:Lcom/google/googlenav/ui/wizard/ju;

    new-instance v1, Lcom/google/googlenav/friend/C;

    invoke-direct {v1, p0}, Lcom/google/googlenav/friend/C;-><init>(Lcom/google/googlenav/friend/t;)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/ju;->a(Lcom/google/googlenav/ui/wizard/iF;)V

    .line 679
    return-void
.end method

.method public a(IILjava/lang/Object;)Z
    .registers 12
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x1

    .line 99
    iget-object v0, p0, Lcom/google/googlenav/friend/t;->e:LaM/X;

    invoke-virtual {v0}, LaM/X;->bE()Lcom/google/googlenav/friend/aK;

    move-result-object v0

    .line 100
    iget-object v1, p0, Lcom/google/googlenav/friend/t;->e:LaM/X;

    invoke-virtual {v1}, LaM/X;->c()Lcom/google/googlenav/friend/aM;

    move-result-object v1

    .line 104
    sparse-switch p1, :sswitch_data_1d2

    :goto_12
    move v5, v4

    .line 345
    :cond_13
    :goto_13
    return v5

    .line 107
    :sswitch_14
    instance-of v0, p3, Lcom/google/googlenav/h;

    if-eqz v0, :cond_1ce

    .line 108
    check-cast p3, Lcom/google/googlenav/h;

    move-object v2, p3

    .line 110
    :goto_1b
    const-string v3, "cm"

    .line 114
    iget-object v0, p0, Lcom/google/googlenav/friend/t;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->au()Lcom/google/googlenav/ui/wizard/ju;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/friend/t;->b:Lcom/google/googlenav/ui/v;

    move v6, v5

    invoke-virtual/range {v0 .. v7}, Lcom/google/googlenav/ui/wizard/ju;->a(Lcom/google/googlenav/ui/v;Lcom/google/googlenav/h;Ljava/lang/String;ZZZLcom/google/googlenav/ui/wizard/R;)V

    goto :goto_13

    .line 119
    :sswitch_2a
    new-instance v0, Lcom/google/googlenav/ui/wizard/ep;

    invoke-direct {v0}, Lcom/google/googlenav/ui/wizard/ep;-><init>()V

    .line 121
    instance-of v1, p3, Lcom/google/googlenav/h;

    if-eqz v1, :cond_1cb

    .line 122
    check-cast p3, Lcom/google/googlenav/h;

    .line 124
    :goto_35
    iput-object p3, v0, Lcom/google/googlenav/ui/wizard/ep;->a:Lcom/google/googlenav/h;

    .line 125
    iput-boolean v5, v0, Lcom/google/googlenav/ui/wizard/ep;->c:Z

    .line 126
    iget-object v1, p0, Lcom/google/googlenav/friend/t;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/v;->m()LaM/a;

    move-result-object v1

    iput-object v1, v0, Lcom/google/googlenav/ui/wizard/ep;->d:LaM/a;

    .line 127
    iget-object v1, p0, Lcom/google/googlenav/friend/t;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/v;->au()Lcom/google/googlenav/ui/wizard/ju;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/wizard/ju;->a(Lcom/google/googlenav/ui/wizard/ep;)V

    goto :goto_13

    .line 132
    :sswitch_4b
    invoke-virtual {p0}, Lcom/google/googlenav/friend/t;->a()V

    goto :goto_13

    .line 136
    :sswitch_4f
    iget-object v0, p0, Lcom/google/googlenav/friend/t;->e:LaM/X;

    invoke-virtual {v0}, LaM/X;->bF()V

    goto :goto_13

    .line 140
    :sswitch_55
    iget-object v0, p0, Lcom/google/googlenav/friend/t;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->ac()Lcom/google/googlenav/aA;

    move-result-object v0

    invoke-static {}, Lcom/google/googlenav/K;->ab()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/aA;->a(Ljava/lang/String;)V

    goto :goto_12

    .line 144
    :sswitch_63
    invoke-direct {p0}, Lcom/google/googlenav/friend/t;->f()V

    goto :goto_13

    .line 148
    :sswitch_67
    invoke-static {}, Lcom/google/googlenav/friend/af;->c()V

    .line 149
    iget-object v0, p0, Lcom/google/googlenav/friend/t;->e:LaM/X;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, LaM/X;->a(B)V

    goto :goto_13

    .line 153
    :sswitch_71
    check-cast p3, Ljava/lang/String;

    .line 154
    invoke-virtual {v1, p3}, Lcom/google/googlenav/friend/aM;->a(Ljava/lang/String;)Lcom/google/googlenav/friend/aK;

    move-result-object v0

    .line 155
    if-eqz v0, :cond_13

    .line 157
    invoke-direct {p0, v0}, Lcom/google/googlenav/friend/t;->b(Lcom/google/googlenav/friend/aK;)V

    goto :goto_13

    .line 164
    :sswitch_7d
    check-cast p3, Ljava/lang/String;

    .line 165
    invoke-virtual {v1, p3}, Lcom/google/googlenav/friend/aM;->a(Ljava/lang/String;)Lcom/google/googlenav/friend/aK;

    move-result-object v0

    .line 166
    iget-object v1, p0, Lcom/google/googlenav/friend/t;->h:Lcom/google/googlenav/friend/L;

    invoke-interface {v1, v0}, Lcom/google/googlenav/friend/L;->a(Lcom/google/googlenav/friend/aK;)V

    goto :goto_13

    .line 170
    :sswitch_89
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/K;->an()Z

    move-result v1

    if-eqz v1, :cond_9a

    .line 171
    iget-object v0, p0, Lcom/google/googlenav/friend/t;->e:LaM/X;

    invoke-virtual {v0, v7}, LaM/X;->a(Ljava/lang/Object;)V

    goto/16 :goto_13

    .line 173
    :cond_9a
    invoke-direct {p0, v0}, Lcom/google/googlenav/friend/t;->b(Lcom/google/googlenav/friend/aK;)V

    goto/16 :goto_13

    .line 178
    :sswitch_9f
    iget-object v0, p0, Lcom/google/googlenav/friend/t;->e:LaM/X;

    invoke-virtual {v0}, LaM/X;->bF()V

    goto/16 :goto_13

    .line 182
    :sswitch_a6
    iget-object v0, p0, Lcom/google/googlenav/friend/t;->e:LaM/X;

    invoke-virtual {v0}, LaM/X;->bF()V

    goto/16 :goto_13

    .line 186
    :sswitch_ad
    iget-object v0, p0, Lcom/google/googlenav/friend/t;->e:LaM/X;

    invoke-virtual {v0, v5}, LaM/X;->k(Z)V

    goto/16 :goto_13

    .line 190
    :sswitch_b4
    iget-object v0, p0, Lcom/google/googlenav/friend/t;->e:LaM/X;

    invoke-virtual {v0, v4}, LaM/X;->k(Z)V

    goto/16 :goto_13

    .line 194
    :sswitch_bb
    invoke-direct {p0}, Lcom/google/googlenav/friend/t;->e()V

    goto/16 :goto_13

    .line 198
    :sswitch_c0
    invoke-direct {p0}, Lcom/google/googlenav/friend/t;->d()V

    goto/16 :goto_13

    .line 202
    :sswitch_c5
    invoke-direct {p0, v0, v4}, Lcom/google/googlenav/friend/t;->b(Lcom/google/googlenav/friend/aK;Z)V

    goto/16 :goto_13

    .line 206
    :sswitch_ca
    invoke-direct {p0, v0, v5}, Lcom/google/googlenav/friend/t;->b(Lcom/google/googlenav/friend/aK;Z)V

    goto/16 :goto_13

    .line 210
    :sswitch_cf
    invoke-direct {p0, v0, v5}, Lcom/google/googlenav/friend/t;->a(Lcom/google/googlenav/friend/aK;Z)V

    goto/16 :goto_13

    .line 214
    :sswitch_d4
    invoke-direct {p0, v0, v4}, Lcom/google/googlenav/friend/t;->a(Lcom/google/googlenav/friend/aK;Z)V

    goto/16 :goto_13

    .line 218
    :sswitch_d9
    invoke-direct {p0, v0}, Lcom/google/googlenav/friend/t;->d(Lcom/google/googlenav/friend/aK;)V

    goto/16 :goto_13

    .line 222
    :sswitch_de
    invoke-direct {p0}, Lcom/google/googlenav/friend/t;->c()V

    goto/16 :goto_13

    .line 233
    :sswitch_e3
    instance-of v0, p3, Landroid/view/MenuItem;

    if-eqz v0, :cond_100

    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->as()Z

    move-result v0

    if-eqz v0, :cond_100

    .line 235
    check-cast p3, Landroid/view/MenuItem;

    .line 236
    invoke-static {p3}, Lav/a;->b(Landroid/view/MenuItem;)V

    .line 239
    new-instance v0, Lcom/google/googlenav/friend/u;

    invoke-direct {v0, p0, p3}, Lcom/google/googlenav/friend/u;-><init>(Lcom/google/googlenav/friend/t;Landroid/view/MenuItem;)V

    .line 248
    new-instance v7, Lcom/google/googlenav/friend/v;

    invoke-direct {v7, p0, v0}, Lcom/google/googlenav/friend/v;-><init>(Lcom/google/googlenav/friend/t;Ljava/lang/Runnable;)V

    .line 271
    :cond_100
    iget-object v0, p0, Lcom/google/googlenav/friend/t;->f:Lcom/google/googlenav/friend/p;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v7, v1, v2}, Lcom/google/googlenav/friend/p;->a(Lcom/google/googlenav/aY;J)V

    goto/16 :goto_13

    .line 275
    :sswitch_109
    invoke-direct {p0}, Lcom/google/googlenav/friend/t;->b()V

    goto/16 :goto_13

    .line 279
    :sswitch_10e
    invoke-static {}, Lcom/google/googlenav/friend/af;->g()V

    .line 280
    iget-object v0, p0, Lcom/google/googlenav/friend/t;->e:LaM/X;

    invoke-virtual {v0}, LaM/X;->c()Lcom/google/googlenav/friend/aM;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/googlenav/friend/aM;->a(I)Lcom/google/googlenav/friend/aK;

    move-result-object v0

    .line 281
    invoke-direct {p0, v0}, Lcom/google/googlenav/friend/t;->c(Lcom/google/googlenav/friend/aK;)V

    .line 282
    iget-object v1, p0, Lcom/google/googlenav/friend/t;->d:Lcom/google/googlenav/ui/friend/q;

    invoke-virtual {v0}, Lcom/google/googlenav/friend/aK;->n()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/googlenav/ui/friend/q;->a(J)V

    goto/16 :goto_13

    .line 286
    :sswitch_12d
    invoke-static {}, Lcom/google/googlenav/friend/af;->h()V

    .line 289
    iget-object v1, p0, Lcom/google/googlenav/friend/t;->e:LaM/X;

    invoke-virtual {v1, v5}, LaM/X;->a(B)V

    .line 292
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/google/googlenav/friend/aK;->c()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 295
    iget-object v1, p0, Lcom/google/googlenav/friend/t;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/v;->ao()Lcom/google/googlenav/ui/wizard/z;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/ui/wizard/A;

    const/16 v3, 0x19

    invoke-virtual {v0}, Lcom/google/googlenav/friend/aK;->s()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/google/googlenav/ui/wizard/A;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/wizard/z;->a(Lcom/google/googlenav/ui/wizard/A;)V

    .line 305
    iget-object v1, p0, Lcom/google/googlenav/friend/t;->b:Lcom/google/googlenav/ui/v;

    invoke-static {v0}, Lad/y;->a(Lcom/google/googlenav/friend/aK;)Lad/y;

    move-result-object v0

    iget-object v2, p0, Lcom/google/googlenav/friend/t;->c:Lat/u;

    invoke-virtual {v2}, Lat/u;->o()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    invoke-virtual {v1, v7, v0, v2}, Lcom/google/googlenav/ui/v;->a(Lad/y;Lad/y;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    goto/16 :goto_13

    .line 311
    :sswitch_162
    invoke-static {}, Lcom/google/googlenav/friend/af;->l()V

    .line 312
    iget-object v1, p0, Lcom/google/googlenav/friend/t;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/v;->ac()Lcom/google/googlenav/aA;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/googlenav/friend/aK;->s()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/googlenav/aA;->e(Ljava/lang/String;)V

    goto/16 :goto_12

    .line 316
    :sswitch_174
    invoke-static {}, Lcom/google/googlenav/friend/af;->m()V

    .line 317
    iget-object v1, p0, Lcom/google/googlenav/friend/t;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/v;->ac()Lcom/google/googlenav/aA;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/googlenav/friend/aK;->s()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-interface {v1, v2, v7, v7}, Lcom/google/googlenav/aA;->a([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_12

    .line 321
    :sswitch_18a
    iget-object v1, p0, Lcom/google/googlenav/friend/t;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/v;->ac()Lcom/google/googlenav/aA;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/googlenav/friend/aK;->s()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/googlenav/aA;->d(Ljava/lang/String;)V

    move v5, v4

    .line 322
    goto/16 :goto_13

    .line 325
    :sswitch_19a
    invoke-virtual {v0}, Lcom/google/googlenav/friend/aK;->D()Lcom/google/googlenav/a;

    move-result-object v1

    .line 326
    if-eqz v1, :cond_13

    .line 327
    new-instance v2, Lcom/google/googlenav/h;

    invoke-virtual {v1}, Lcom/google/googlenav/a;->a()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/googlenav/h;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 328
    invoke-virtual {v0}, Lcom/google/googlenav/friend/aK;->b()Z

    move-result v0

    if-eqz v0, :cond_1ba

    invoke-virtual {v2}, Lcom/google/googlenav/h;->l()Z

    move-result v0

    if-eqz v0, :cond_1ba

    .line 329
    invoke-direct {p0, v2}, Lcom/google/googlenav/friend/t;->a(Lcom/google/googlenav/h;)V

    goto/16 :goto_13

    .line 331
    :cond_1ba
    invoke-direct {p0, v1}, Lcom/google/googlenav/friend/t;->a(Lcom/google/googlenav/a;)V

    goto/16 :goto_13

    .line 337
    :sswitch_1bf
    invoke-direct {p0, v0}, Lcom/google/googlenav/friend/t;->a(Lcom/google/googlenav/friend/aK;)V

    goto/16 :goto_13

    .line 341
    :sswitch_1c4
    iget-object v0, p0, Lcom/google/googlenav/friend/t;->e:LaM/X;

    invoke-virtual {v0}, LaM/X;->Z()V

    goto/16 :goto_13

    :cond_1cb
    move-object p3, v7

    goto/16 :goto_35

    :cond_1ce
    move-object v2, v7

    goto/16 :goto_1b

    .line 104
    nop

    :sswitch_data_1d2
    .sparse-switch
        0x1 -> :sswitch_89
        0x12c -> :sswitch_bb
        0x12d -> :sswitch_4b
        0x12e -> :sswitch_10e
        0x131 -> :sswitch_a6
        0x132 -> :sswitch_9f
        0x134 -> :sswitch_c5
        0x135 -> :sswitch_ca
        0x136 -> :sswitch_cf
        0x137 -> :sswitch_d4
        0x13a -> :sswitch_d9
        0x13b -> :sswitch_4f
        0x13c -> :sswitch_67
        0x13d -> :sswitch_e3
        0x142 -> :sswitch_162
        0x143 -> :sswitch_174
        0x144 -> :sswitch_109
        0x14a -> :sswitch_7d
        0x14b -> :sswitch_71
        0x14e -> :sswitch_ad
        0x14f -> :sswitch_b4
        0x150 -> :sswitch_18a
        0x152 -> :sswitch_c0
        0x155 -> :sswitch_63
        0x156 -> :sswitch_1bf
        0x158 -> :sswitch_de
        0x159 -> :sswitch_1c4
        0x25b -> :sswitch_12d
        0x834 -> :sswitch_14
        0x83b -> :sswitch_19a
        0x843 -> :sswitch_2a
        0xa8c -> :sswitch_55
    .end sparse-switch
.end method
