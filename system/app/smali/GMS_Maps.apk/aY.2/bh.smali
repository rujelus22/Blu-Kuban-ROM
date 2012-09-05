.class public LaY/bh;
.super LaY/A;


# instance fields
.field private A:Lcom/google/googlenav/ui/view/android/ce;

.field private B:Lbb/d;

.field private C:Lbb/d;

.field private D:LaN/b;

.field private E:Lcom/google/googlenav/E;

.field private F:Z

.field private G:Lbf/g;

.field private final H:LaY/bp;

.field private x:Z

.field private y:Z

.field private z:Lbb/B;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/D;LaJ/p;LaJ/u;Lcom/google/googlenav/ui/af;)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, LaY/bh;-><init>(Lcom/google/googlenav/ui/D;LaJ/p;LaJ/u;Lcom/google/googlenav/ui/af;Lcom/google/googlenav/E;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/ui/D;LaJ/p;LaJ/u;Lcom/google/googlenav/ui/af;Lcom/google/googlenav/E;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, LaY/A;-><init>(Lcom/google/googlenav/ui/D;LaJ/p;LaJ/u;Lcom/google/googlenav/ui/af;Lcom/google/googlenav/E;)V

    invoke-direct {p0}, LaY/bh;->j()LaY/bp;

    move-result-object v0

    iput-object v0, p0, LaY/bh;->H:LaY/bp;

    return-void
.end method

.method static synthetic a(LaY/bh;Lbb/d;)Lbb/d;
    .registers 2

    iput-object p1, p0, LaY/bh;->B:Lbb/d;

    return-object p1
.end method

.method static synthetic a(LaY/bh;)V
    .registers 1

    invoke-direct {p0}, LaY/bh;->bm()V

    return-void
.end method

.method static synthetic a(LaY/bh;Landroid/content/res/Configuration;)V
    .registers 2

    invoke-direct {p0, p1}, LaY/bh;->b(Landroid/content/res/Configuration;)V

    return-void
.end method

.method static synthetic b(LaY/bh;)V
    .registers 1

    invoke-direct {p0}, LaY/bh;->bg()V

    return-void
.end method

.method private b(Landroid/content/res/Configuration;)V
    .registers 5

    iget-object v0, p0, LaY/bh;->H:LaY/bp;

    invoke-interface {v0}, LaY/bp;->e()Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, LaY/bh;->z:Lbb/B;

    invoke-virtual {v0, p1}, Lbb/B;->a(Landroid/content/res/Configuration;)Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-static {}, Lbb/e;->a()Lbb/e;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, LaY/bh;->z:Lbb/B;

    invoke-virtual {v2}, Lbb/B;->k()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lbb/e;->a(II)V

    iget-object v0, p0, LaY/bh;->A:Lcom/google/googlenav/ui/view/android/ce;

    iget-object v1, p0, LaY/bh;->z:Lbb/B;

    invoke-virtual {v1}, Lbb/B;->h()Lcom/google/android/maps/rideabout/view/i;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/ce;->a(Lcom/google/android/maps/rideabout/view/i;)V

    iget-object v0, p0, LaY/bh;->A:Lcom/google/googlenav/ui/view/android/ce;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/ce;->b()V

    :cond_2e
    return-void
.end method

.method private bg()V
    .registers 4

    iget-object v0, p0, LaY/bh;->z:Lbb/B;

    invoke-virtual {v0}, Lbb/B;->i()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, LaY/bh;->z:Lbb/B;

    invoke-virtual {v0}, Lbb/B;->a()V

    :cond_d
    invoke-static {}, Lbb/e;->a()Lbb/e;

    move-result-object v0

    invoke-virtual {v0}, Lbb/e;->f()Z

    invoke-static {}, Lbb/e;->a()Lbb/e;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, LaY/bh;->z:Lbb/B;

    invoke-virtual {v2}, Lbb/B;->k()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lbb/e;->a(II)V

    invoke-direct {p0}, LaY/bh;->bp()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, LaY/bh;->b(Landroid/content/res/Configuration;)V

    iget-object v0, p0, LaY/bh;->A:Lcom/google/googlenav/ui/view/android/ce;

    iget-object v1, p0, LaY/bh;->z:Lbb/B;

    invoke-virtual {v1}, Lbb/B;->h()Lcom/google/android/maps/rideabout/view/i;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/ce;->a(Lcom/google/android/maps/rideabout/view/i;)V

    iget-object v0, p0, LaY/bh;->z:Lbb/B;

    invoke-virtual {v0}, Lbb/B;->c()V

    iget-object v0, p0, LaY/bh;->A:Lcom/google/googlenav/ui/view/android/ce;

    iget-object v1, p0, LaY/bh;->z:Lbb/B;

    invoke-virtual {v1}, Lbb/B;->g()Lcom/google/android/maps/rideabout/view/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/ce;->a(Lcom/google/android/maps/rideabout/view/h;)V

    iget-object v0, p0, LaY/bh;->z:Lbb/B;

    invoke-virtual {v0}, Lbb/B;->e()V

    iget-object v0, p0, LaY/bh;->A:Lcom/google/googlenav/ui/view/android/ce;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/ce;->b()V

    return-void
.end method

.method private bh()Z
    .registers 3

    const/4 v1, 0x1

    invoke-virtual {p0}, LaY/bh;->ae()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, LaY/bh;->i()V

    :goto_a
    return v1

    :cond_b
    invoke-virtual {p0}, LaY/bh;->k()V

    iget-object v0, p0, LaY/bh;->A:Lcom/google/googlenav/ui/view/android/ce;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/ce;->o()V

    goto :goto_a
.end method

.method private bi()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, LaY/bh;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->I()Lcom/google/googlenav/ui/av;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/av;->a(Z)V

    iget-object v0, p0, LaY/bh;->D:LaN/b;

    invoke-virtual {v0}, LaN/b;->s()V

    iget-object v0, p0, LaY/bh;->A:Lcom/google/googlenav/ui/view/android/ce;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/ce;->l()V

    iget-object v0, p0, LaY/bh;->D:LaN/b;

    invoke-virtual {v0}, LaN/b;->d()V

    iget-object v0, p0, LaY/bh;->D:LaN/b;

    invoke-virtual {v0}, LaN/b;->f()V

    iget-object v0, p0, LaY/bh;->H:LaY/bp;

    invoke-interface {v0}, LaY/bp;->b()V

    iput-boolean v1, p0, LaY/bh;->x:Z

    iput-boolean v1, p0, LaY/bh;->y:Z

    return-void
.end method

.method private bj()Lau/v;
    .registers 2

    iget-object v0, p0, LaY/bh;->f:Lcom/google/googlenav/E;

    check-cast v0, Lau/v;

    return-object v0
.end method

.method private bk()V
    .registers 1

    return-void
.end method

.method private bl()Z
    .registers 3

    iget-object v0, p0, LaY/bh;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->aC()Lcom/google/googlenav/ui/wizard/hM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->N()Lcom/google/googlenav/ui/wizard/hS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hS;->ac()Z

    move-result v1

    if-nez v1, :cond_16

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hS;->ad()Z

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

.method private bm()V
    .registers 5

    const/4 v3, 0x1

    iput-boolean v3, p0, LaY/bh;->F:Z

    new-instance v0, LaY/bj;

    iget-object v1, p0, LaY/bh;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/D;->aq()Lap/c;

    move-result-object v1

    iget-object v2, p0, LaY/bh;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/D;->ae()Lcom/google/googlenav/android/ac;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2, v3}, LaY/bj;-><init>(LaY/bh;Lap/c;Lcom/google/googlenav/android/ac;Z)V

    iput-object v0, p0, LaY/bh;->G:Lbf/g;

    iget-object v0, p0, LaY/bh;->G:Lbf/g;

    invoke-virtual {v0}, Lbf/g;->g()V

    return-void
.end method

.method private bn()V
    .registers 5

    invoke-static {}, Lbb/e;->a()Lbb/e;

    move-result-object v0

    const/16 v1, 0x14

    new-instance v2, LaY/bk;

    invoke-direct {v2, p0}, LaY/bk;-><init>(LaY/bh;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lbb/e;->a(ILbb/c;Ljava/lang/String;)Lbb/d;

    move-result-object v0

    iput-object v0, p0, LaY/bh;->C:Lbb/d;

    return-void
.end method

.method private bo()V
    .registers 2

    iget-object v0, p0, LaY/bh;->C:Lbb/d;

    if-eqz v0, :cond_9

    iget-object v0, p0, LaY/bh;->C:Lbb/d;

    invoke-interface {v0}, Lbb/d;->c()V

    :cond_9
    return-void
.end method

.method private bp()Landroid/content/res/Configuration;
    .registers 2

    invoke-static {}, Lcom/google/googlenav/ui/bw;->e()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(LaY/bh;)V
    .registers 1

    invoke-direct {p0}, LaY/bh;->bn()V

    return-void
.end method

.method static synthetic d(LaY/bh;)Lcom/google/googlenav/ui/view/android/ce;
    .registers 2

    iget-object v0, p0, LaY/bh;->A:Lcom/google/googlenav/ui/view/android/ce;

    return-object v0
.end method

.method static synthetic e(LaY/bh;)Lbb/B;
    .registers 2

    iget-object v0, p0, LaY/bh;->z:Lbb/B;

    return-object v0
.end method

.method static synthetic f(LaY/bh;)Lbb/d;
    .registers 2

    iget-object v0, p0, LaY/bh;->B:Lbb/d;

    return-object v0
.end method

.method static synthetic g(LaY/bh;)V
    .registers 1

    invoke-direct {p0}, LaY/bh;->bo()V

    return-void
.end method

.method static synthetic h(LaY/bh;)Landroid/content/res/Configuration;
    .registers 2

    invoke-direct {p0}, LaY/bh;->bp()Landroid/content/res/Configuration;

    move-result-object v0

    return-object v0
.end method

.method private h(I)V
    .registers 5

    const/4 v2, 0x0

    const-string v0, "m"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, LaY/bh;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-ltz p1, :cond_27

    iget-object v0, p0, LaY/bh;->f:Lcom/google/googlenav/E;

    invoke-interface {v0}, Lcom/google/googlenav/E;->f()I

    move-result v0

    if-ge p1, v0, :cond_27

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, v2}, LaY/bh;->a(IZZ)V

    :goto_18
    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ak()Z

    move-result v0

    if-nez v0, :cond_26

    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, LaY/bh;->b(ILjava/lang/Object;)V

    :cond_26
    return-void

    :cond_27
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, LaY/bh;->b(I)V

    goto :goto_18
.end method

.method private j()LaY/bp;
    .registers 2

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ak()Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance v0, LaY/bq;

    invoke-direct {v0, p0}, LaY/bq;-><init>(LaY/bh;)V

    :goto_f
    return-object v0

    :cond_10
    invoke-static {}, Lcom/google/googlenav/android/a;->f()Z

    move-result v0

    if-eqz v0, :cond_1c

    new-instance v0, LaY/bn;

    invoke-direct {v0, p0}, LaY/bn;-><init>(LaY/bh;)V

    goto :goto_f

    :cond_1c
    new-instance v0, LaY/bl;

    invoke-direct {v0, p0}, LaY/bl;-><init>(LaY/bh;)V

    goto :goto_f
.end method


# virtual methods
.method protected O()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method protected P()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method protected T()Ljava/lang/String;
    .registers 2

    const/16 v0, 0x3e9

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected U()I
    .registers 2

    const/16 v0, 0x12

    return v0
.end method

.method public a(Landroid/content/res/Configuration;)V
    .registers 3

    iget-object v0, p0, LaY/bh;->H:LaY/bp;

    invoke-interface {v0}, LaY/bp;->e()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p0}, LaY/bh;->ae()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, LaY/bh;->r:Lcom/google/googlenav/ui/view/android/bs;

    check-cast v0, LE/a;

    invoke-virtual {v0, p1}, LE/a;->a(Landroid/content/res/Configuration;)V

    :cond_15
    :goto_15
    return-void

    :cond_16
    invoke-direct {p0, p1}, LaY/bh;->b(Landroid/content/res/Configuration;)V

    goto :goto_15
.end method

.method protected a(Lcom/google/googlenav/E;)V
    .registers 4

    iput-object p1, p0, LaY/bh;->f:Lcom/google/googlenav/E;

    invoke-interface {p1}, Lcom/google/googlenav/E;->c()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1d

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ak()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {p1}, Lcom/google/googlenav/E;->f()I

    move-result v0

    if-lez v0, :cond_1d

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LaY/bh;->b(I)V

    :cond_1d
    return-void
.end method

.method public a(Z)V
    .registers 2

    return-void
.end method

.method public a(IILjava/lang/Object;)Z
    .registers 7

    const/4 v1, 0x0

    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_56

    move v0, v1

    :cond_6
    :goto_6
    return v0

    :sswitch_7
    invoke-virtual {p0}, LaY/bh;->ae()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-direct {p0}, LaY/bh;->bl()Z

    move-result v2

    if-nez v2, :cond_6

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, LaY/bh;->c(ILjava/lang/Object;)V

    goto :goto_6

    :sswitch_18
    invoke-direct {p0}, LaY/bh;->bl()Z

    move-result v1

    if-nez v1, :cond_2c

    const-string v1, "sb"

    invoke-static {v1}, LaY/G;->b(Ljava/lang/String;)V

    iget-object v1, p0, LaY/bh;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/D;->aw()Lcom/google/googlenav/ui/at;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/at;->a(Z)V

    :cond_2c
    :sswitch_2c
    invoke-direct {p0}, LaY/bh;->bl()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-direct {p0, p2}, LaY/bh;->h(I)V

    goto :goto_6

    :sswitch_36
    invoke-virtual {p0}, LaY/bh;->W()V

    goto :goto_6

    :sswitch_3a
    invoke-virtual {p0}, LaY/bh;->e()V

    goto :goto_6

    :sswitch_3e
    invoke-direct {p0}, LaY/bh;->bk()V

    goto :goto_6

    :sswitch_42
    iget-object v1, p0, LaY/bh;->D:LaN/b;

    invoke-virtual {v1}, LaN/b;->r()V

    goto :goto_6

    :sswitch_48
    iget-object v1, p0, LaY/bh;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/D;->aC()Lcom/google/googlenav/ui/wizard/hM;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/hM;->i()V

    goto :goto_6

    :sswitch_52
    invoke-virtual {p0}, LaY/bh;->i()V

    goto :goto_6

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

.method public a(Lbb/E;)Z
    .registers 3

    const/16 v0, 0x1b

    invoke-super {p0, p1, v0}, LaY/A;->a(Lbb/E;I)Z

    move-result v0

    return v0
.end method

.method protected a(Ljava/io/DataInput;)Z
    .registers 3

    invoke-static {}, Lcom/google/googlenav/ui/bw;->d()Lcom/google/googlenav/ui/bw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bw;->aa()Lcom/google/googlenav/ui/x;

    move-result-object v0

    invoke-static {p1, v0}, Lau/b;->a(Ljava/io/DataInput;Lcom/google/googlenav/ui/x;)Lau/b;

    move-result-object v0

    iput-object v0, p0, LaY/bh;->f:Lcom/google/googlenav/E;

    const/4 v0, 0x1

    return v0
.end method

.method public aH()I
    .registers 2

    const v0, 0x7f0e0013

    return v0
.end method

.method public aM()Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, LaY/bh;->a()Lau/b;

    move-result-object v0

    invoke-virtual {v0}, Lau/b;->au()Lau/x;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/ui/bJ;->a(Lau/x;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3c9

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public aO()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method protected aR()V
    .registers 6

    invoke-super {p0}, LaY/A;->aR()V

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->n()Lak/m;

    move-result-object v0

    invoke-static {p0}, LaY/Y;->k(LaY/i;)Ljava/lang/String;

    move-result-object v1

    :try_start_f
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p0}, LaY/bh;->a()Lau/b;

    move-result-object v4

    invoke-virtual {v4, v3}, Lau/b;->b(Ljava/io/DataOutput;)V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lak/m;->b([BLjava/lang/String;)I
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_27} :catch_2f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_f .. :try_end_27} :catch_28

    :goto_27
    return-void

    :catch_28
    move-exception v0

    const-string v1, "UI-DL save"

    invoke-static {v1, v0}, Laf/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_27

    :catch_2f
    move-exception v0

    goto :goto_27
.end method

.method public aV()Z
    .registers 4

    const/4 v2, 0x1

    iget-object v0, p0, LaY/bh;->f:Lcom/google/googlenav/E;

    iput-object v0, p0, LaY/bh;->E:Lcom/google/googlenav/E;

    invoke-virtual {p0}, LaY/bh;->a()Lau/b;

    move-result-object v0

    invoke-virtual {v0}, Lau/b;->aO()Lau/b;

    move-result-object v0

    iput-object v0, p0, LaY/bh;->f:Lcom/google/googlenav/E;

    iget-object v0, p0, LaY/bh;->E:Lcom/google/googlenav/E;

    check-cast v0, Lau/v;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lau/v;->c(Z)V

    invoke-static {p0}, Laf/l;->a(Laf/j;)V

    iget-object v0, p0, LaY/bh;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->I()Lcom/google/googlenav/ui/av;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/av;->a(Z)V

    invoke-static {}, Lbb/B;->l()Lbb/B;

    move-result-object v0

    iput-object v0, p0, LaY/bh;->z:Lbb/B;

    invoke-static {}, Lcom/google/googlenav/ui/view/android/ce;->a()Lcom/google/googlenav/ui/view/android/ce;

    move-result-object v0

    iput-object v0, p0, LaY/bh;->A:Lcom/google/googlenav/ui/view/android/ce;

    invoke-static {}, LaN/b;->z()LaN/b;

    move-result-object v0

    iput-object v0, p0, LaY/bh;->D:LaN/b;

    iget-object v0, p0, LaY/bh;->D:LaN/b;

    invoke-virtual {v0}, LaN/b;->s()V

    iget-object v0, p0, LaY/bh;->D:LaN/b;

    invoke-direct {p0}, LaY/bh;->bj()Lau/v;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, LaN/b;->a(Lau/v;Lcom/google/googlenav/ui/p;)V

    iget-object v0, p0, LaY/bh;->H:LaY/bp;

    invoke-interface {v0}, LaY/bp;->a()V

    return v2
.end method

.method public aW()V
    .registers 1

    invoke-direct {p0}, LaY/bh;->bi()V

    invoke-static {p0}, Laf/l;->c(Laf/j;)V

    return-void
.end method

.method public aX()V
    .registers 2

    iget-object v0, p0, LaY/bh;->D:LaN/b;

    invoke-virtual {v0}, LaN/b;->l()V

    return-void
.end method

.method public aY()V
    .registers 3

    const/4 v1, 0x1

    invoke-super {p0}, LaY/A;->aY()V

    iget-object v0, p0, LaY/bh;->A:Lcom/google/googlenav/ui/view/android/ce;

    invoke-virtual {v0, p0}, Lcom/google/googlenav/ui/view/android/ce;->a(Lcom/google/googlenav/ui/p;)V

    iget-boolean v0, p0, LaY/bh;->x:Z

    if-nez v0, :cond_19

    iget-object v0, p0, LaY/bh;->D:LaN/b;

    invoke-virtual {v0}, LaN/b;->j()Z

    move-result v0

    if-eqz v0, :cond_1a

    iput-boolean v1, p0, LaY/bh;->x:Z

    iput-boolean v1, p0, LaY/bh;->y:Z

    :cond_19
    :goto_19
    return-void

    :cond_1a
    iget-object v0, p0, LaY/bh;->D:LaN/b;

    invoke-virtual {v0}, LaN/b;->k()V

    iput-boolean v1, p0, LaY/bh;->x:Z

    goto :goto_19
.end method

.method public aZ()V
    .registers 2

    iget-object v0, p0, LaY/bh;->A:Lcom/google/googlenav/ui/view/android/ce;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/ce;->m()V

    invoke-super {p0}, LaY/A;->aZ()V

    return-void
.end method

.method public al()[Laq/a;
    .registers 3

    invoke-virtual {p0}, LaY/bh;->ae()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ak()Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return-object v0

    :cond_12
    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/ui/n;->ay:Laq/a;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/googlenav/ui/n;->az:Laq/a;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Laq/a;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Laq/a;

    goto :goto_11
.end method

.method protected aq()V
    .registers 1

    return-void
.end method

.method protected ar()V
    .registers 3

    new-instance v0, LE/a;

    invoke-virtual {p0}, LaY/bh;->al()[Laq/a;

    move-result-object v1

    invoke-direct {v0, p0, v1}, LE/a;-><init>(Lcom/google/googlenav/ui/p;[Laq/a;)V

    iput-object v0, p0, LaY/bh;->r:Lcom/google/googlenav/ui/view/android/bs;

    return-void
.end method

.method public ax()I
    .registers 2

    const/16 v0, 0x15

    return v0
.end method

.method public c()Z
    .registers 3

    iget-boolean v0, p0, LaY/bh;->y:Z

    iget-object v1, p0, LaY/bh;->D:LaN/b;

    invoke-virtual {v1}, LaN/b;->h()Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, p0, LaY/bh;->y:Z

    iget-boolean v0, p0, LaY/bh;->y:Z

    return v0
.end method

.method public d()[Lcom/google/googlenav/ui/aR;
    .registers 8

    const/4 v0, 0x0

    invoke-direct {p0}, LaY/bh;->bj()Lau/v;

    move-result-object v3

    if-nez v3, :cond_8

    :cond_7
    :goto_7
    return-object v0

    :cond_8
    invoke-virtual {v3}, Lau/v;->ag()I

    move-result v4

    const/4 v1, 0x1

    if-lt v4, v1, :cond_7

    add-int/lit8 v0, v4, -0x1

    new-array v1, v0, [Lcom/google/googlenav/ui/aQ;

    const/4 v0, 0x0

    move v2, v0

    :goto_15
    add-int/lit8 v0, v4, -0x1

    if-ge v2, v0, :cond_3d

    new-instance v0, Lcom/google/googlenav/ui/aS;

    invoke-virtual {v3, v2}, Lau/v;->q(I)Z

    move-result v5

    invoke-static {v5}, Lcom/google/googlenav/ui/aS;->b(Z)I

    move-result v5

    add-int/lit8 v6, v2, 0x1

    invoke-direct {v0, v3, v5, v2, v6}, Lcom/google/googlenav/ui/aS;-><init>(Lau/v;III)V

    aput-object v0, v1, v2

    aget-object v0, v1, v2

    check-cast v0, Lcom/google/googlenav/ui/aS;

    invoke-virtual {v3, v2}, Lau/v;->q(I)Z

    move-result v5

    invoke-static {v5}, Lcom/google/googlenav/ui/aS;->a(Z)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/google/googlenav/ui/aS;->a(I)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_15

    :cond_3d
    move-object v0, v1

    goto :goto_7
.end method

.method public e()V
    .registers 4

    iget-object v0, p0, LaY/bh;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0, p0}, Lcom/google/googlenav/ui/D;->a(LaY/i;)V

    iget-object v1, p0, LaY/bh;->b:Lcom/google/googlenav/ui/D;

    iget-object v0, p0, LaY/bh;->E:Lcom/google/googlenav/E;

    check-cast v0, Lau/b;

    const/4 v2, 0x3

    invoke-virtual {v1, v0, v2}, Lcom/google/googlenav/ui/D;->a(Lau/b;B)V

    return-void
.end method

.method protected f(Laq/b;)Z
    .registers 6

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p1}, Laq/b;->e()C

    move-result v2

    const/16 v3, 0x23

    if-ne v2, v3, :cond_2d

    invoke-virtual {p0}, LaY/bh;->ae()Z

    move-result v2

    if-eqz v2, :cond_21

    const-string v1, "m"

    const-string v2, "#"

    invoke-virtual {p0, v1, v2}, LaY/bh;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, LaY/bh;->f:Lcom/google/googlenav/E;

    invoke-interface {v1}, Lcom/google/googlenav/E;->c()I

    move-result v1

    invoke-direct {p0, v1}, LaY/bh;->h(I)V

    :cond_20
    :goto_20
    return v0

    :cond_21
    const-string v2, "l"

    const-string v3, "#"

    invoke-virtual {p0, v2, v3}, LaY/bh;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, LaY/bh;->c(ILjava/lang/Object;)V

    goto :goto_20

    :cond_2d
    invoke-virtual {p0}, LaY/bh;->ai()Z

    move-result v2

    if-nez v2, :cond_53

    iget-object v2, p0, LaY/bh;->d:LaJ/u;

    invoke-virtual {v2}, LaJ/u;->c()LaJ/B;

    move-result-object v2

    invoke-virtual {p0, v2}, LaY/bh;->b(LaJ/B;)I

    move-result v2

    if-ltz v2, :cond_46

    invoke-virtual {p1}, Laq/b;->c()I

    move-result v2

    const/4 v3, 0x7

    if-eq v2, v3, :cond_20

    :cond_46
    invoke-virtual {p1}, Laq/b;->c()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_53

    invoke-direct {p0}, LaY/bh;->bh()Z

    move-result v0

    goto :goto_20

    :cond_53
    invoke-static {}, LaN/b;->z()LaN/b;

    move-result-object v2

    invoke-virtual {p1}, Laq/b;->a()I

    move-result v3

    invoke-virtual {v2, v3}, LaN/b;->a(I)Z

    move-result v2

    if-nez v2, :cond_20

    move v0, v1

    goto :goto_20
.end method

.method public i()V
    .registers 9

    iget-boolean v0, p0, LaY/bh;->F:Z

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, LaY/bh;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->aC()Lcom/google/googlenav/ui/wizard/hM;

    move-result-object v0

    const/16 v1, 0x3ba

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3b9

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2b5

    invoke-static {v3}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x62

    invoke-static {v4}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-instance v7, LaY/bi;

    invoke-direct {v7, p0}, LaY/bi;-><init>(LaY/bh;)V

    invoke-virtual/range {v0 .. v7}, Lcom/google/googlenav/ui/wizard/hM;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/google/googlenav/ui/wizard/aX;)V

    goto :goto_4
.end method

.method protected k()V
    .registers 2

    invoke-super {p0}, LaY/A;->k()V

    iget-object v0, p0, LaY/bh;->H:LaY/bp;

    invoke-interface {v0}, LaY/bp;->c()V

    return-void
.end method

.method protected m()V
    .registers 2

    iget-object v0, p0, LaY/bh;->H:LaY/bp;

    invoke-interface {v0}, LaY/bp;->d()V

    invoke-super {p0}, LaY/A;->m()V

    return-void
.end method

.method public o()V
    .registers 1

    invoke-direct {p0}, LaY/bh;->bh()Z

    return-void
.end method

.method public q()I
    .registers 2

    invoke-static {}, Lbb/B;->l()Lbb/B;

    move-result-object v0

    invoke-virtual {v0}, Lbb/B;->k()I

    move-result v0

    return v0
.end method
