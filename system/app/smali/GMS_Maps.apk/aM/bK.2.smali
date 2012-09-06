.class public LaM/bK;
.super LaM/F;
.source "SourceFile"


# instance fields
.field private A:Lcom/google/googlenav/ui/view/d;

.field private B:Lay/a;

.field private C:Lcom/google/googlenav/F;

.field private D:Z

.field private E:LaT/i;

.field private final F:LaM/bS;

.field private v:Z

.field private w:Z

.field private x:Lcom/google/googlenav/ui/view/H;

.field private y:Lcom/google/googlenav/ui/view/android/cc;

.field private z:Lcom/google/googlenav/ui/view/d;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/v;Lat/p;Lat/u;Lcom/google/googlenav/ui/ac;)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 163
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, LaM/bK;-><init>(Lcom/google/googlenav/ui/v;Lat/p;Lat/u;Lcom/google/googlenav/ui/ac;Lcom/google/googlenav/F;)V

    .line 164
    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/ui/v;Lat/p;Lat/u;Lcom/google/googlenav/ui/ac;Lcom/google/googlenav/F;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 154
    invoke-direct/range {p0 .. p5}, LaM/F;-><init>(Lcom/google/googlenav/ui/v;Lat/p;Lat/u;Lcom/google/googlenav/ui/ac;Lcom/google/googlenav/F;)V

    .line 147
    invoke-direct {p0}, LaM/bK;->bd()LaM/bS;

    move-result-object v0

    iput-object v0, p0, LaM/bK;->F:LaM/bS;

    .line 155
    return-void
.end method

.method static synthetic a(LaM/bK;Lcom/google/googlenav/ui/view/d;)Lcom/google/googlenav/ui/view/d;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, LaM/bK;->z:Lcom/google/googlenav/ui/view/d;

    return-object p1
.end method

.method static synthetic a(LaM/bK;)V
    .registers 1
    .parameter

    .prologue
    .line 103
    invoke-direct {p0}, LaM/bK;->bk()V

    return-void
.end method

.method static synthetic a(LaM/bK;Landroid/content/res/Configuration;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 103
    invoke-direct {p0, p1}, LaM/bK;->b(Landroid/content/res/Configuration;)V

    return-void
.end method

.method static synthetic b(LaM/bK;)V
    .registers 1
    .parameter

    .prologue
    .line 103
    invoke-direct {p0}, LaM/bK;->be()V

    return-void
.end method

.method private b(Landroid/content/res/Configuration;)V
    .registers 5
    .parameter

    .prologue
    .line 221
    iget-object v0, p0, LaM/bK;->F:LaM/bS;

    invoke-interface {v0}, LaM/bS;->e()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 222
    iget-object v0, p0, LaM/bK;->x:Lcom/google/googlenav/ui/view/H;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/view/H;->a(Landroid/content/res/Configuration;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 223
    invoke-static {}, Lcom/google/googlenav/ui/view/e;->a()Lcom/google/googlenav/ui/view/e;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, LaM/bK;->x:Lcom/google/googlenav/ui/view/H;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/view/H;->k()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/ui/view/e;->a(II)V

    .line 225
    iget-object v0, p0, LaM/bK;->y:Lcom/google/googlenav/ui/view/android/cc;

    iget-object v1, p0, LaM/bK;->x:Lcom/google/googlenav/ui/view/H;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/view/H;->h()Lcom/google/android/maps/rideabout/view/i;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/cc;->a(Lcom/google/android/maps/rideabout/view/i;)V

    .line 226
    iget-object v0, p0, LaM/bK;->y:Lcom/google/googlenav/ui/view/android/cc;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/cc;->b()V

    .line 229
    :cond_2e
    return-void
.end method

.method private bd()LaM/bS;
    .registers 2

    .prologue
    .line 167
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->an()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 168
    new-instance v0, LaM/bT;

    invoke-direct {v0, p0}, LaM/bT;-><init>(LaM/bK;)V

    .line 172
    :goto_f
    return-object v0

    .line 169
    :cond_10
    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 170
    new-instance v0, LaM/bQ;

    invoke-direct {v0, p0}, LaM/bQ;-><init>(LaM/bK;)V

    goto :goto_f

    .line 172
    :cond_1c
    new-instance v0, LaM/bO;

    invoke-direct {v0, p0}, LaM/bO;-><init>(LaM/bK;)V

    goto :goto_f
.end method

.method private be()V
    .registers 4

    .prologue
    .line 207
    iget-object v0, p0, LaM/bK;->x:Lcom/google/googlenav/ui/view/H;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/H;->i()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 208
    iget-object v0, p0, LaM/bK;->x:Lcom/google/googlenav/ui/view/H;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/H;->a()V

    .line 210
    :cond_d
    invoke-static {}, Lcom/google/googlenav/ui/view/e;->a()Lcom/google/googlenav/ui/view/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/e;->h()Z

    .line 211
    invoke-static {}, Lcom/google/googlenav/ui/view/e;->a()Lcom/google/googlenav/ui/view/e;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, LaM/bK;->x:Lcom/google/googlenav/ui/view/H;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/view/H;->k()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/ui/view/e;->a(II)V

    .line 212
    invoke-direct {p0}, LaM/bK;->bn()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, LaM/bK;->b(Landroid/content/res/Configuration;)V

    .line 213
    iget-object v0, p0, LaM/bK;->y:Lcom/google/googlenav/ui/view/android/cc;

    iget-object v1, p0, LaM/bK;->x:Lcom/google/googlenav/ui/view/H;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/view/H;->h()Lcom/google/android/maps/rideabout/view/i;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/cc;->a(Lcom/google/android/maps/rideabout/view/i;)V

    .line 214
    iget-object v0, p0, LaM/bK;->x:Lcom/google/googlenav/ui/view/H;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/H;->c()V

    .line 215
    iget-object v0, p0, LaM/bK;->y:Lcom/google/googlenav/ui/view/android/cc;

    iget-object v1, p0, LaM/bK;->x:Lcom/google/googlenav/ui/view/H;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/view/H;->g()Lcom/google/android/maps/rideabout/view/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/cc;->a(Lcom/google/android/maps/rideabout/view/h;)V

    .line 216
    iget-object v0, p0, LaM/bK;->x:Lcom/google/googlenav/ui/view/H;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/H;->e()V

    .line 217
    iget-object v0, p0, LaM/bK;->y:Lcom/google/googlenav/ui/view/android/cc;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/cc;->b()V

    .line 218
    return-void
.end method

.method private bf()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 288
    invoke-virtual {p0}, LaM/bK;->ae()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 289
    invoke-virtual {p0}, LaM/bK;->f()V

    .line 295
    :goto_a
    return v1

    .line 293
    :cond_b
    invoke-virtual {p0}, LaM/bK;->l()V

    .line 294
    iget-object v0, p0, LaM/bK;->y:Lcom/google/googlenav/ui/view/android/cc;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/cc;->o()V

    goto :goto_a
.end method

.method private bg()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 314
    iget-object v0, p0, LaM/bK;->B:Lay/a;

    invoke-virtual {v0}, Lay/a;->s()V

    .line 315
    iget-object v0, p0, LaM/bK;->y:Lcom/google/googlenav/ui/view/android/cc;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/cc;->l()V

    .line 316
    iget-object v0, p0, LaM/bK;->B:Lay/a;

    invoke-virtual {v0}, Lay/a;->d()V

    .line 317
    iget-object v0, p0, LaM/bK;->B:Lay/a;

    invoke-virtual {v0}, Lay/a;->f()V

    .line 318
    iget-object v0, p0, LaM/bK;->F:LaM/bS;

    invoke-interface {v0}, LaM/bS;->b()V

    .line 320
    iput-boolean v1, p0, LaM/bK;->v:Z

    .line 321
    iput-boolean v1, p0, LaM/bK;->w:Z

    .line 322
    return-void
.end method

.method private bh()Lad/w;
    .registers 2

    .prologue
    .line 351
    iget-object v0, p0, LaM/bK;->f:Lcom/google/googlenav/F;

    check-cast v0, Lad/w;

    return-object v0
.end method

.method private bi()V
    .registers 1

    .prologue
    .line 491
    return-void
.end method

.method private bj()Z
    .registers 3

    .prologue
    .line 499
    iget-object v0, p0, LaM/bK;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->au()Lcom/google/googlenav/ui/wizard/ju;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->M()Lcom/google/googlenav/ui/wizard/jB;

    move-result-object v0

    .line 500
    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jB;->af()Z

    move-result v1

    if-nez v1, :cond_16

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jB;->ag()Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_16
    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method private bk()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 595
    iput-boolean v3, p0, LaM/bK;->D:Z

    .line 597
    new-instance v0, LaM/bM;

    iget-object v1, p0, LaM/bK;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/v;->aj()LY/c;

    move-result-object v1

    iget-object v2, p0, LaM/bK;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/v;->aa()Lcom/google/googlenav/android/Y;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2, v3}, LaM/bM;-><init>(LaM/bK;LY/c;Lcom/google/googlenav/android/Y;Z)V

    iput-object v0, p0, LaM/bK;->E:LaT/i;

    .line 604
    iget-object v0, p0, LaM/bK;->E:LaT/i;

    invoke-virtual {v0}, LaT/i;->g()V

    .line 605
    return-void
.end method

.method private bl()V
    .registers 5

    .prologue
    .line 793
    invoke-static {}, Lcom/google/googlenav/ui/view/e;->a()Lcom/google/googlenav/ui/view/e;

    move-result-object v0

    const/16 v1, 0x14

    new-instance v2, LaM/bN;

    invoke-direct {v2, p0}, LaM/bN;-><init>(LaM/bK;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/googlenav/ui/view/e;->a(ILcom/google/googlenav/ui/view/c;Ljava/lang/String;)Lcom/google/googlenav/ui/view/d;

    move-result-object v0

    iput-object v0, p0, LaM/bK;->A:Lcom/google/googlenav/ui/view/d;

    .line 809
    return-void
.end method

.method private bm()V
    .registers 2

    .prologue
    .line 812
    iget-object v0, p0, LaM/bK;->A:Lcom/google/googlenav/ui/view/d;

    if-eqz v0, :cond_9

    .line 813
    iget-object v0, p0, LaM/bK;->A:Lcom/google/googlenav/ui/view/d;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/d;->c()V

    .line 815
    :cond_9
    return-void
.end method

.method private bn()Landroid/content/res/Configuration;
    .registers 2

    .prologue
    .line 829
    invoke-static {}, Lcom/google/googlenav/ui/bn;->e()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(LaM/bK;)V
    .registers 1
    .parameter

    .prologue
    .line 103
    invoke-direct {p0}, LaM/bK;->bl()V

    return-void
.end method

.method static synthetic d(LaM/bK;)Lcom/google/googlenav/ui/view/android/cc;
    .registers 2
    .parameter

    .prologue
    .line 103
    iget-object v0, p0, LaM/bK;->y:Lcom/google/googlenav/ui/view/android/cc;

    return-object v0
.end method

.method static synthetic e(LaM/bK;)Lcom/google/googlenav/ui/view/H;
    .registers 2
    .parameter

    .prologue
    .line 103
    iget-object v0, p0, LaM/bK;->x:Lcom/google/googlenav/ui/view/H;

    return-object v0
.end method

.method static synthetic f(LaM/bK;)Lcom/google/googlenav/ui/view/d;
    .registers 2
    .parameter

    .prologue
    .line 103
    iget-object v0, p0, LaM/bK;->z:Lcom/google/googlenav/ui/view/d;

    return-object v0
.end method

.method static synthetic g(LaM/bK;)V
    .registers 1
    .parameter

    .prologue
    .line 103
    invoke-direct {p0}, LaM/bK;->bm()V

    return-void
.end method

.method static synthetic h(LaM/bK;)Landroid/content/res/Configuration;
    .registers 2
    .parameter

    .prologue
    .line 103
    invoke-direct {p0}, LaM/bK;->bn()Landroid/content/res/Configuration;

    move-result-object v0

    return-object v0
.end method

.method private h(I)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 389
    const-string v0, "m"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, LaM/bK;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    if-ltz p1, :cond_27

    iget-object v0, p0, LaM/bK;->f:Lcom/google/googlenav/F;

    invoke-interface {v0}, Lcom/google/googlenav/F;->f()I

    move-result v0

    if-ge p1, v0, :cond_27

    .line 391
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, v2}, LaM/bK;->a(IZZ)V

    .line 395
    :goto_18
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->an()Z

    move-result v0

    if-nez v0, :cond_26

    .line 396
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, LaM/bK;->b(ILjava/lang/Object;)V

    .line 398
    :cond_26
    return-void

    .line 393
    :cond_27
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, LaM/bK;->b(I)V

    goto :goto_18
.end method


# virtual methods
.method protected O()Z
    .registers 2

    .prologue
    .line 611
    const/4 v0, 0x1

    return v0
.end method

.method protected P()Z
    .registers 2

    .prologue
    .line 618
    const/4 v0, 0x1

    return v0
.end method

.method protected T()Ljava/lang/String;
    .registers 2

    .prologue
    .line 198
    const/16 v0, 0x4d4

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected U()I
    .registers 2

    .prologue
    .line 203
    const/16 v0, 0x12

    return v0
.end method

.method public a(Landroid/content/res/Configuration;)V
    .registers 3
    .parameter

    .prologue
    .line 819
    iget-object v0, p0, LaM/bK;->F:LaM/bS;

    invoke-interface {v0}, LaM/bS;->e()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 820
    invoke-virtual {p0}, LaM/bK;->ae()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 821
    iget-object v0, p0, LaM/bK;->r:Lcom/google/googlenav/ui/view/android/bb;

    check-cast v0, LB/a;

    invoke-virtual {v0, p1}, LB/a;->a(Landroid/content/res/Configuration;)V

    .line 826
    :cond_15
    :goto_15
    return-void

    .line 823
    :cond_16
    invoke-direct {p0, p1}, LaM/bK;->b(Landroid/content/res/Configuration;)V

    goto :goto_15
.end method

.method protected a(Lcom/google/googlenav/F;)V
    .registers 4
    .parameter

    .prologue
    .line 341
    iput-object p1, p0, LaM/bK;->f:Lcom/google/googlenav/F;

    .line 342
    invoke-interface {p1}, Lcom/google/googlenav/F;->c()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1d

    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->an()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 344
    invoke-interface {p1}, Lcom/google/googlenav/F;->f()I

    move-result v0

    if-lez v0, :cond_1d

    .line 345
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LaM/bK;->b(I)V

    .line 348
    :cond_1d
    return-void
.end method

.method protected a(Ljava/io/DataOutput;)V
    .registers 3
    .parameter

    .prologue
    .line 553
    invoke-virtual {p0}, LaM/bK;->a()Lad/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lad/b;->b(Ljava/io/DataOutput;)V

    .line 554
    return-void
.end method

.method public a(Z)V
    .registers 2
    .parameter

    .prologue
    .line 845
    return-void
.end method

.method public a(IILjava/lang/Object;)Z
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 429
    sparse-switch p1, :sswitch_data_56

    move v0, v1

    .line 468
    :cond_6
    :goto_6
    return v0

    .line 432
    :sswitch_7
    invoke-virtual {p0}, LaM/bK;->ae()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-direct {p0}, LaM/bK;->bj()Z

    move-result v2

    if-nez v2, :cond_6

    .line 433
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, LaM/bK;->c(ILjava/lang/Object;)V

    goto :goto_6

    .line 437
    :sswitch_18
    invoke-direct {p0}, LaM/bK;->bj()Z

    move-result v1

    if-nez v1, :cond_2c

    .line 438
    const-string v1, "sb"

    invoke-static {v1}, LaM/O;->b(Ljava/lang/String;)V

    .line 440
    iget-object v1, p0, LaM/bK;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/v;->p()Lcom/google/googlenav/ui/ap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/ap;->a(Z)V

    .line 444
    :cond_2c
    :sswitch_2c
    invoke-direct {p0}, LaM/bK;->bj()Z

    move-result v1

    if-nez v1, :cond_6

    .line 445
    invoke-direct {p0, p2}, LaM/bK;->h(I)V

    goto :goto_6

    .line 449
    :sswitch_36
    invoke-virtual {p0}, LaM/bK;->W()V

    goto :goto_6

    .line 453
    :sswitch_3a
    invoke-virtual {p0}, LaM/bK;->e()V

    goto :goto_6

    .line 456
    :sswitch_3e
    invoke-direct {p0}, LaM/bK;->bi()V

    goto :goto_6

    .line 459
    :sswitch_42
    iget-object v1, p0, LaM/bK;->B:Lay/a;

    invoke-virtual {v1}, Lay/a;->r()V

    goto :goto_6

    .line 462
    :sswitch_48
    iget-object v1, p0, LaM/bK;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/v;->au()Lcom/google/googlenav/ui/wizard/ju;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/ju;->i()V

    goto :goto_6

    .line 465
    :sswitch_52
    invoke-virtual {p0}, LaM/bK;->f()V

    goto :goto_6

    .line 429
    :sswitch_data_56
    .sparse-switch
        0x1 -> :sswitch_18
        0xc8 -> :sswitch_2c
        0xf1 -> :sswitch_7
        0x3f9 -> :sswitch_36
        0xb54 -> :sswitch_3a
        0xb55 -> :sswitch_52
        0xb56 -> :sswitch_3e
        0xb57 -> :sswitch_42
        0xb58 -> :sswitch_48
    .end sparse-switch
.end method

.method public a(Lcom/google/googlenav/ui/view/J;)Z
    .registers 3
    .parameter

    .prologue
    .line 329
    const/16 v0, 0x1b

    invoke-super {p0, p1, v0}, LaM/F;->a(Lcom/google/googlenav/ui/view/J;I)Z

    move-result v0

    return v0
.end method

.method protected a(Ljava/io/DataInput;)Z
    .registers 3
    .parameter

    .prologue
    .line 543
    invoke-static {}, Lcom/google/googlenav/ui/bn;->d()Lcom/google/googlenav/ui/bn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bn;->S()Lcom/google/googlenav/ui/p;

    move-result-object v0

    .line 546
    invoke-static {p1, v0}, Lad/b;->a(Ljava/io/DataInput;Lcom/google/googlenav/ui/p;)Lad/b;

    move-result-object v0

    .line 547
    iput-object v0, p0, LaM/bK;->f:Lcom/google/googlenav/F;

    .line 548
    const/4 v0, 0x1

    return v0
.end method

.method public aF()I
    .registers 2

    .prologue
    .line 623
    const v0, 0x7f110021

    return v0
.end method

.method public aK()Ljava/lang/String;
    .registers 5

    .prologue
    .line 334
    invoke-virtual {p0}, LaM/bK;->a()Lad/b;

    move-result-object v0

    invoke-virtual {v0}, Lad/b;->as()Lad/y;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/ui/bA;->a(Lad/y;)Ljava/lang/String;

    move-result-object v0

    .line 335
    const/16 v1, 0x4a8

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public aM()Z
    .registers 2

    .prologue
    .line 538
    const/4 v0, 0x1

    return v0
.end method

.method public aT()Z
    .registers 3

    .prologue
    .line 178
    iget-object v0, p0, LaM/bK;->f:Lcom/google/googlenav/F;

    iput-object v0, p0, LaM/bK;->C:Lcom/google/googlenav/F;

    .line 181
    invoke-virtual {p0}, LaM/bK;->a()Lad/b;

    move-result-object v0

    invoke-virtual {v0}, Lad/b;->aK()Lad/b;

    move-result-object v0

    iput-object v0, p0, LaM/bK;->f:Lcom/google/googlenav/F;

    .line 184
    iget-object v0, p0, LaM/bK;->C:Lcom/google/googlenav/F;

    check-cast v0, Lad/w;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lad/w;->c(Z)V

    .line 186
    invoke-static {p0}, Lcom/google/googlenav/common/j;->a(Lcom/google/googlenav/common/h;)V

    .line 187
    invoke-static {}, Lcom/google/googlenav/ui/view/H;->l()Lcom/google/googlenav/ui/view/H;

    move-result-object v0

    iput-object v0, p0, LaM/bK;->x:Lcom/google/googlenav/ui/view/H;

    .line 188
    invoke-static {}, Lcom/google/googlenav/ui/view/android/cc;->a()Lcom/google/googlenav/ui/view/android/cc;

    move-result-object v0

    iput-object v0, p0, LaM/bK;->y:Lcom/google/googlenav/ui/view/android/cc;

    .line 189
    invoke-static {}, Lay/a;->z()Lay/a;

    move-result-object v0

    iput-object v0, p0, LaM/bK;->B:Lay/a;

    .line 190
    iget-object v0, p0, LaM/bK;->B:Lay/a;

    invoke-virtual {v0}, Lay/a;->s()V

    .line 191
    iget-object v0, p0, LaM/bK;->B:Lay/a;

    invoke-direct {p0}, LaM/bK;->bh()Lad/w;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lay/a;->a(Lad/w;Lcom/google/googlenav/ui/g;)V

    .line 192
    iget-object v0, p0, LaM/bK;->F:LaM/bS;

    invoke-interface {v0}, LaM/bS;->a()V

    .line 193
    const/4 v0, 0x1

    return v0
.end method

.method public aU()V
    .registers 1

    .prologue
    .line 309
    invoke-direct {p0}, LaM/bK;->bg()V

    .line 310
    invoke-static {p0}, Lcom/google/googlenav/common/j;->c(Lcom/google/googlenav/common/h;)V

    .line 311
    return-void
.end method

.method public aV()V
    .registers 2

    .prologue
    .line 264
    iget-object v0, p0, LaM/bK;->B:Lay/a;

    invoke-virtual {v0}, Lay/a;->l()V

    .line 265
    return-void
.end method

.method public aW()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 238
    invoke-super {p0}, LaM/F;->aW()V

    .line 239
    iget-object v0, p0, LaM/bK;->y:Lcom/google/googlenav/ui/view/android/cc;

    invoke-virtual {v0, p0}, Lcom/google/googlenav/ui/view/android/cc;->a(Lcom/google/googlenav/ui/g;)V

    .line 241
    iget-boolean v0, p0, LaM/bK;->v:Z

    if-nez v0, :cond_19

    .line 242
    iget-object v0, p0, LaM/bK;->B:Lay/a;

    invoke-virtual {v0}, Lay/a;->j()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 245
    iput-boolean v1, p0, LaM/bK;->v:Z

    .line 246
    iput-boolean v1, p0, LaM/bK;->w:Z

    .line 252
    :cond_19
    :goto_19
    return-void

    .line 248
    :cond_1a
    iget-object v0, p0, LaM/bK;->B:Lay/a;

    invoke-virtual {v0}, Lay/a;->k()V

    .line 249
    iput-boolean v1, p0, LaM/bK;->v:Z

    goto :goto_19
.end method

.method public aX()V
    .registers 2

    .prologue
    .line 258
    iget-object v0, p0, LaM/bK;->y:Lcom/google/googlenav/ui/view/android/cc;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/cc;->m()V

    .line 259
    invoke-super {p0}, LaM/F;->aX()V

    .line 260
    return-void
.end method

.method protected ap()V
    .registers 1

    .prologue
    .line 835
    return-void
.end method

.method protected aq()V
    .registers 2

    .prologue
    .line 839
    new-instance v0, LB/a;

    invoke-direct {v0, p0}, LB/a;-><init>(Lcom/google/googlenav/ui/g;)V

    iput-object v0, p0, LaM/bK;->r:Lcom/google/googlenav/ui/view/android/bb;

    .line 840
    return-void
.end method

.method public av()I
    .registers 2

    .prologue
    .line 272
    const/16 v0, 0x15

    return v0
.end method

.method public c()Z
    .registers 3

    .prologue
    .line 232
    iget-boolean v0, p0, LaM/bK;->w:Z

    iget-object v1, p0, LaM/bK;->B:Lay/a;

    invoke-virtual {v1}, Lay/a;->h()Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, p0, LaM/bK;->w:Z

    .line 233
    iget-boolean v0, p0, LaM/bK;->w:Z

    return v0
.end method

.method public d()[Lcom/google/googlenav/ui/aH;
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 509
    invoke-direct {p0}, LaM/bK;->bh()Lad/w;

    move-result-object v3

    .line 510
    if-nez v3, :cond_8

    .line 530
    :cond_7
    :goto_7
    return-object v0

    .line 513
    :cond_8
    invoke-virtual {v3}, Lad/w;->ae()I

    move-result v4

    .line 518
    const/4 v1, 0x1

    if-lt v4, v1, :cond_7

    .line 521
    add-int/lit8 v0, v4, -0x1

    new-array v1, v0, [Lcom/google/googlenav/ui/aG;

    .line 522
    const/4 v0, 0x0

    move v2, v0

    :goto_15
    add-int/lit8 v0, v4, -0x1

    if-ge v2, v0, :cond_3d

    .line 523
    new-instance v0, Lcom/google/googlenav/ui/aI;

    invoke-virtual {v3, v2}, Lad/w;->q(I)Z

    move-result v5

    invoke-static {v5}, Lcom/google/googlenav/ui/aI;->b(Z)I

    move-result v5

    add-int/lit8 v6, v2, 0x1

    invoke-direct {v0, v3, v5, v2, v6}, Lcom/google/googlenav/ui/aI;-><init>(Lad/w;III)V

    aput-object v0, v1, v2

    .line 526
    aget-object v0, v1, v2

    check-cast v0, Lcom/google/googlenav/ui/aI;

    invoke-virtual {v3, v2}, Lad/w;->q(I)Z

    move-result v5

    invoke-static {v5}, Lcom/google/googlenav/ui/aI;->a(Z)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/google/googlenav/ui/aI;->a(I)V

    .line 522
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_15

    :cond_3d
    move-object v0, v1

    .line 530
    goto :goto_7
.end method

.method public e()V
    .registers 4

    .prologue
    .line 300
    iget-object v0, p0, LaM/bK;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0, p0}, Lcom/google/googlenav/ui/v;->a(LaM/i;)V

    .line 303
    iget-object v1, p0, LaM/bK;->b:Lcom/google/googlenav/ui/v;

    iget-object v0, p0, LaM/bK;->C:Lcom/google/googlenav/F;

    check-cast v0, Lad/b;

    const/4 v2, 0x3

    invoke-virtual {v1, v0, v2}, Lcom/google/googlenav/ui/v;->a(Lad/b;B)V

    .line 305
    return-void
.end method

.method public f()V
    .registers 9

    .prologue
    .line 560
    iget-boolean v0, p0, LaM/bK;->D:Z

    if-eqz v0, :cond_5

    .line 592
    :goto_4
    return-void

    .line 563
    :cond_5
    iget-object v0, p0, LaM/bK;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->au()Lcom/google/googlenav/ui/wizard/ju;

    move-result-object v0

    const/16 v1, 0x495

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x494

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x362

    invoke-static {v3}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x6b

    invoke-static {v4}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-instance v7, LaM/bL;

    invoke-direct {v7, p0}, LaM/bL;-><init>(LaM/bK;)V

    invoke-virtual/range {v0 .. v7}, Lcom/google/googlenav/ui/wizard/ju;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/google/googlenav/ui/wizard/bn;)V

    goto :goto_4
.end method

.method protected f(LZ/a;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 359
    invoke-virtual {p1}, LZ/a;->e()C

    move-result v2

    const/16 v3, 0x23

    if-ne v2, v3, :cond_2d

    .line 360
    invoke-virtual {p0}, LaM/bK;->ae()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 361
    const-string v1, "m"

    const-string v2, "#"

    invoke-virtual {p0, v1, v2}, LaM/bK;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    iget-object v1, p0, LaM/bK;->f:Lcom/google/googlenav/F;

    invoke-interface {v1}, Lcom/google/googlenav/F;->c()I

    move-result v1

    invoke-direct {p0, v1}, LaM/bK;->h(I)V

    .line 385
    :cond_20
    :goto_20
    return v0

    .line 364
    :cond_21
    const-string v2, "l"

    const-string v3, "#"

    invoke-virtual {p0, v2, v3}, LaM/bK;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, LaM/bK;->c(ILjava/lang/Object;)V

    goto :goto_20

    .line 371
    :cond_2d
    invoke-virtual {p0}, LaM/bK;->ai()Z

    move-result v2

    if-nez v2, :cond_53

    .line 372
    iget-object v2, p0, LaM/bK;->d:Lat/u;

    invoke-virtual {v2}, Lat/u;->c()Lat/B;

    move-result-object v2

    invoke-virtual {p0, v2}, LaM/bK;->b(Lat/B;)I

    move-result v2

    if-ltz v2, :cond_46

    invoke-virtual {p1}, LZ/a;->c()I

    move-result v2

    const/4 v3, 0x7

    if-eq v2, v3, :cond_20

    .line 378
    :cond_46
    invoke-virtual {p1}, LZ/a;->c()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_53

    .line 379
    invoke-direct {p0}, LaM/bK;->bf()Z

    move-result v0

    goto :goto_20

    .line 382
    :cond_53
    invoke-static {}, Lay/a;->z()Lay/a;

    move-result-object v2

    invoke-virtual {p1}, LZ/a;->a()I

    move-result v3

    invoke-virtual {v2, v3}, Lay/a;->a(I)Z

    move-result v2

    if-nez v2, :cond_20

    move v0, v1

    .line 385
    goto :goto_20
.end method

.method public h()V
    .registers 1

    .prologue
    .line 277
    invoke-direct {p0}, LaM/bK;->bf()Z

    .line 278
    return-void
.end method

.method protected l()V
    .registers 2

    .prologue
    .line 413
    invoke-super {p0}, LaM/F;->l()V

    .line 415
    iget-object v0, p0, LaM/bK;->F:LaM/bS;

    invoke-interface {v0}, LaM/bS;->c()V

    .line 416
    return-void
.end method

.method protected n()V
    .registers 2

    .prologue
    .line 407
    iget-object v0, p0, LaM/bK;->F:LaM/bS;

    invoke-interface {v0}, LaM/bS;->d()V

    .line 408
    invoke-super {p0}, LaM/F;->n()V

    .line 409
    return-void
.end method

.method public q()I
    .registers 2

    .prologue
    .line 402
    invoke-static {}, Lcom/google/googlenav/ui/view/H;->l()Lcom/google/googlenav/ui/view/H;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/H;->k()I

    move-result v0

    return v0
.end method
