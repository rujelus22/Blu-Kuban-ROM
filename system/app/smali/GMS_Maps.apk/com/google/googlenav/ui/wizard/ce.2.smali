.class public Lcom/google/googlenav/ui/wizard/ce;
.super Lcom/google/googlenav/ui/wizard/z;


# instance fields
.field private final a:Lcom/google/googlenav/L;

.field private g:LaY/Y;

.field private final h:Lah/g;

.field private final i:Lai/f;

.field private j:Lcom/google/googlenav/ui/aD;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/wizard/hM;Lcom/google/googlenav/L;)V
    .registers 5

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/z;-><init>(Lcom/google/googlenav/ui/wizard/hM;)V

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/ce;->a:Lcom/google/googlenav/L;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ce;->c:Lcom/google/googlenav/ui/bw;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bw;->p()Lah/g;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/ce;->h:Lah/g;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ce;->h:Lah/g;

    sget-char v1, Lcom/google/googlenav/ui/bw;->ai:C

    invoke-interface {v0, v1}, Lah/g;->e(C)Lah/f;

    move-result-object v0

    check-cast v0, Lai/f;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/ce;->i:Lai/f;

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/ce;)LaY/Y;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ce;->g:LaY/Y;

    return-object v0
.end method

.method private a(Lcom/google/googlenav/layer/m;)Lcom/google/googlenav/ui/view/android/a;
    .registers 10

    const/4 v2, 0x0

    if-nez p1, :cond_4

    :cond_3
    :goto_3
    return-object v2

    :cond_4
    invoke-virtual {p1}, Lcom/google/googlenav/layer/m;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/google/googlenav/layer/m;->g()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/googlenav/layer/m;->a(I)Lcom/google/googlenav/e;

    move-result-object v0

    if-eqz v0, :cond_61

    invoke-virtual {v0}, Lcom/google/googlenav/e;->a()Lah/f;

    move-result-object v0

    :goto_1c
    check-cast v0, Lai/f;

    if-nez v0, :cond_6c

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ce;->c:Lcom/google/googlenav/ui/bw;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bw;->p()Lah/g;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/googlenav/layer/m;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_63

    sget-char v0, Lcom/google/googlenav/ui/bw;->aj:C

    :goto_32
    invoke-interface {v3, v0}, Lah/g;->e(C)Lah/f;

    move-result-object v0

    check-cast v0, Lai/f;

    move-object v3, v0

    :goto_39
    invoke-virtual {p1}, Lcom/google/googlenav/layer/m;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_66

    const/16 v0, 0x3fb

    move v6, v0

    :goto_46
    new-instance v0, Lcom/google/googlenav/ui/view/android/a;

    iget-object v4, p0, Lcom/google/googlenav/ui/wizard/ce;->a:Lcom/google/googlenav/L;

    invoke-virtual {p1}, Lcom/google/googlenav/layer/m;->b()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/google/googlenav/L;->c(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6a

    iget-object v4, p0, Lcom/google/googlenav/ui/wizard/ce;->i:Lai/f;

    :goto_56
    new-instance v5, Lbb/a;

    const/4 v7, -0x1

    invoke-direct {v5, v6, v7, p1}, Lbb/a;-><init>(IILjava/lang/Object;)V

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ui/view/android/a;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lai/f;Lai/f;Lbb/a;)V

    move-object v2, v0

    goto :goto_3

    :cond_61
    move-object v0, v2

    goto :goto_1c

    :cond_63
    sget-char v0, Lcom/google/googlenav/ui/bw;->ad:C

    goto :goto_32

    :cond_66
    const/16 v0, 0x3f6

    move v6, v0

    goto :goto_46

    :cond_6a
    move-object v4, v2

    goto :goto_56

    :cond_6c
    move-object v3, v0

    goto :goto_39
.end method

.method private a(LaY/i;)Z
    .registers 4

    invoke-virtual {p1}, LaY/i;->ax()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_e

    invoke-virtual {p1}, LaY/i;->ax()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    instance-of v0, p1, LaY/t;

    if-eqz v0, :cond_1f

    check-cast p1, LaY/t;

    invoke-virtual {p1}, LaY/t;->b()Lcom/google/googlenav/layer/m;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/ce;->b(Lcom/google/googlenav/layer/m;)Z

    move-result v0

    goto :goto_f

    :cond_1f
    const/4 v0, 0x0

    goto :goto_f
.end method

.method static synthetic b(Lcom/google/googlenav/ui/wizard/ce;)Lcom/google/googlenav/L;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ce;->a:Lcom/google/googlenav/L;

    return-object v0
.end method

.method private b(Lcom/google/googlenav/layer/m;)Z
    .registers 4

    invoke-virtual {p1}, Lcom/google/googlenav/layer/m;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LayerTransit"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    const-string v1, "LayerWikipedia"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private c(Lcom/google/googlenav/ui/view/android/R;)V
    .registers 10

    const/4 v2, 0x0

    new-instance v0, Lcom/google/googlenav/ui/view/android/a;

    const/16 v1, 0x214

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/ce;->h:Lah/g;

    sget-char v4, Lcom/google/googlenav/ui/bw;->af:C

    invoke-interface {v3, v4}, Lah/g;->e(C)Lah/f;

    move-result-object v3

    check-cast v3, Lai/f;

    iget-object v4, p0, Lcom/google/googlenav/ui/wizard/ce;->a:Lcom/google/googlenav/L;

    invoke-interface {v4}, Lcom/google/googlenav/L;->e()Z

    move-result v4

    if-eqz v4, :cond_2c

    iget-object v4, p0, Lcom/google/googlenav/ui/wizard/ce;->i:Lai/f;

    :goto_1d
    new-instance v5, Lbb/a;

    const/16 v6, 0x3f0

    const/4 v7, -0x1

    invoke-direct {v5, v6, v7, v2}, Lbb/a;-><init>(IILjava/lang/Object;)V

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ui/view/android/a;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lai/f;Lai/f;Lbb/a;)V

    invoke-virtual {p1, v0}, Lcom/google/googlenav/ui/view/android/R;->add(Ljava/lang/Object;)V

    return-void

    :cond_2c
    move-object v4, v2

    goto :goto_1d
.end method

.method private d(Lcom/google/googlenav/ui/view/android/R;)V
    .registers 10

    const/4 v2, 0x0

    new-instance v0, Lcom/google/googlenav/ui/view/android/a;

    const/16 v1, 0x217

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/ce;->h:Lah/g;

    sget-char v4, Lcom/google/googlenav/ui/bw;->ag:C

    invoke-interface {v3, v4}, Lah/g;->e(C)Lah/f;

    move-result-object v3

    check-cast v3, Lai/f;

    iget-object v4, p0, Lcom/google/googlenav/ui/wizard/ce;->a:Lcom/google/googlenav/L;

    invoke-interface {v4}, Lcom/google/googlenav/L;->d()Z

    move-result v4

    if-eqz v4, :cond_2c

    iget-object v4, p0, Lcom/google/googlenav/ui/wizard/ce;->i:Lai/f;

    :goto_1d
    new-instance v5, Lbb/a;

    const/16 v6, 0x3f1

    const/4 v7, -0x1

    invoke-direct {v5, v6, v7, v2}, Lbb/a;-><init>(IILjava/lang/Object;)V

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ui/view/android/a;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lai/f;Lai/f;Lbb/a;)V

    invoke-virtual {p1, v0}, Lcom/google/googlenav/ui/view/android/R;->add(Ljava/lang/Object;)V

    return-void

    :cond_2c
    move-object v4, v2

    goto :goto_1d
.end method

.method private e(Lcom/google/googlenav/ui/view/android/R;)V
    .registers 10

    const/4 v2, 0x0

    new-instance v0, Lcom/google/googlenav/ui/view/android/a;

    const/16 v1, 0x215

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/ce;->h:Lah/g;

    sget-char v4, Lcom/google/googlenav/ui/bw;->aA:C

    invoke-interface {v3, v4}, Lah/g;->e(C)Lah/f;

    move-result-object v3

    check-cast v3, Lai/f;

    iget-object v4, p0, Lcom/google/googlenav/ui/wizard/ce;->a:Lcom/google/googlenav/L;

    invoke-interface {v4}, Lcom/google/googlenav/L;->b()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2d

    iget-object v4, p0, Lcom/google/googlenav/ui/wizard/ce;->i:Lai/f;

    :goto_1e
    new-instance v5, Lbb/a;

    const/16 v6, 0x3f3

    const/4 v7, -0x1

    invoke-direct {v5, v6, v7, v2}, Lbb/a;-><init>(IILjava/lang/Object;)V

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ui/view/android/a;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lai/f;Lai/f;Lbb/a;)V

    invoke-virtual {p1, v0}, Lcom/google/googlenav/ui/view/android/R;->add(Ljava/lang/Object;)V

    return-void

    :cond_2d
    move-object v4, v2

    goto :goto_1e
.end method

.method private f(Lcom/google/googlenav/ui/view/android/R;)V
    .registers 10

    const/4 v2, 0x0

    new-instance v0, Lcom/google/googlenav/ui/view/android/a;

    const/16 v1, 0x216

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/ce;->h:Lah/g;

    sget-char v4, Lcom/google/googlenav/ui/bw;->av:C

    invoke-interface {v3, v4}, Lah/g;->e(C)Lah/f;

    move-result-object v3

    check-cast v3, Lai/f;

    iget-object v4, p0, Lcom/google/googlenav/ui/wizard/ce;->a:Lcom/google/googlenav/L;

    invoke-interface {v4}, Lcom/google/googlenav/L;->b()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2d

    iget-object v4, p0, Lcom/google/googlenav/ui/wizard/ce;->i:Lai/f;

    :goto_1e
    new-instance v5, Lbb/a;

    const/16 v6, 0x3f4

    const/4 v7, -0x1

    invoke-direct {v5, v6, v7, v2}, Lbb/a;-><init>(IILjava/lang/Object;)V

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ui/view/android/a;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lai/f;Lai/f;Lbb/a;)V

    invoke-virtual {p1, v0}, Lcom/google/googlenav/ui/view/android/R;->add(Ljava/lang/Object;)V

    return-void

    :cond_2d
    move-object v4, v2

    goto :goto_1e
.end method

.method private g(Lcom/google/googlenav/ui/view/android/R;)V
    .registers 10

    const/4 v2, 0x0

    new-instance v0, Lcom/google/googlenav/ui/view/android/a;

    const/16 v1, 0x20c

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/ce;->h:Lah/g;

    sget-char v4, Lcom/google/googlenav/ui/bw;->ax:C

    invoke-interface {v3, v4}, Lah/g;->e(C)Lah/f;

    move-result-object v3

    check-cast v3, Lai/f;

    iget-object v4, p0, Lcom/google/googlenav/ui/wizard/ce;->a:Lcom/google/googlenav/L;

    invoke-interface {v4}, Lcom/google/googlenav/L;->c()Z

    move-result v4

    if-eqz v4, :cond_2c

    iget-object v4, p0, Lcom/google/googlenav/ui/wizard/ce;->i:Lai/f;

    :goto_1d
    new-instance v5, Lbb/a;

    const/16 v6, 0x3f7

    const/4 v7, -0x1

    invoke-direct {v5, v6, v7, v2}, Lbb/a;-><init>(IILjava/lang/Object;)V

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ui/view/android/a;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lai/f;Lai/f;Lbb/a;)V

    invoke-virtual {p1, v0}, Lcom/google/googlenav/ui/view/android/R;->add(Ljava/lang/Object;)V

    return-void

    :cond_2c
    move-object v4, v2

    goto :goto_1d
.end method

.method private h(Lcom/google/googlenav/ui/view/android/R;)V
    .registers 4

    invoke-static {}, Lcom/google/googlenav/layer/f;->a()Lcom/google/googlenav/layer/f;

    move-result-object v0

    const-string v1, "LayerTransit"

    invoke-virtual {v0, v1}, Lcom/google/googlenav/layer/f;->c(Ljava/lang/String;)Lcom/google/googlenav/layer/m;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/ce;->a(Lcom/google/googlenav/layer/m;)Lcom/google/googlenav/ui/view/android/a;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {p1, v0}, Lcom/google/googlenav/ui/view/android/R;->add(Ljava/lang/Object;)V

    :cond_13
    return-void
.end method

.method private i(Lcom/google/googlenav/ui/view/android/R;)V
    .registers 4

    invoke-static {}, Lcom/google/googlenav/layer/f;->a()Lcom/google/googlenav/layer/f;

    move-result-object v0

    const-string v1, "LayerWikipedia"

    invoke-virtual {v0, v1}, Lcom/google/googlenav/layer/f;->c(Ljava/lang/String;)Lcom/google/googlenav/layer/m;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/ce;->a(Lcom/google/googlenav/layer/m;)Lcom/google/googlenav/ui/view/android/a;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {p1, v0}, Lcom/google/googlenav/ui/view/android/R;->add(Ljava/lang/Object;)V

    :cond_13
    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;)Lcom/google/googlenav/ui/view/android/R;
    .registers 14

    new-instance v10, Lcom/google/googlenav/ui/view/android/R;

    const/4 v0, 0x1

    invoke-direct {v10, p1, v0}, Lcom/google/googlenav/ui/view/android/R;-><init>(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ce;->g:LaY/Y;

    invoke-virtual {v0}, LaY/Y;->K()Ljava/util/Vector;

    move-result-object v11

    const/4 v0, 0x0

    move v9, v0

    :goto_e
    invoke-virtual {v11}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v9, v0, :cond_75

    invoke-virtual {v11, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, LaY/i;

    invoke-direct {p0, v4}, Lcom/google/googlenav/ui/wizard/ce;->a(LaY/i;)Z

    move-result v0

    if-eqz v0, :cond_25

    :goto_21
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_e

    :cond_25
    invoke-virtual {v4}, LaY/i;->ax()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_53

    new-instance v0, Lcom/google/googlenav/ui/view/android/a;

    const/4 v1, 0x0

    invoke-virtual {v4}, LaY/i;->aM()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/googlenav/ui/bw;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v4}, LaY/i;->aN()Lah/f;

    move-result-object v4

    check-cast v4, Lai/f;

    iget-object v5, p0, Lcom/google/googlenav/ui/wizard/ce;->i:Lai/f;

    new-instance v6, Lbb/a;

    const/16 v7, 0x3e9

    const/4 v8, 0x0

    invoke-direct {v6, v7, v9, v8}, Lbb/a;-><init>(IILjava/lang/Object;)V

    sget-object v7, Lcom/google/googlenav/ui/bg;->ay:Lcom/google/googlenav/ui/bg;

    sget-object v8, Lcom/google/googlenav/ui/bg;->y:Lcom/google/googlenav/ui/bg;

    invoke-direct/range {v0 .. v8}, Lcom/google/googlenav/ui/view/android/a;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Lai/f;Lai/f;Lbb/a;Lcom/google/googlenav/ui/bg;Lcom/google/googlenav/ui/bg;)V

    invoke-virtual {v10, v0}, Lcom/google/googlenav/ui/view/android/R;->add(Ljava/lang/Object;)V

    goto :goto_21

    :cond_53
    new-instance v0, Lcom/google/googlenav/ui/view/android/a;

    invoke-virtual {v4}, LaY/i;->aM()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/googlenav/ui/bw;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v4}, LaY/i;->aN()Lah/f;

    move-result-object v3

    check-cast v3, Lai/f;

    iget-object v4, p0, Lcom/google/googlenav/ui/wizard/ce;->i:Lai/f;

    new-instance v5, Lbb/a;

    const/16 v6, 0x3e9

    const/4 v7, 0x0

    invoke-direct {v5, v6, v9, v7}, Lbb/a;-><init>(IILjava/lang/Object;)V

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ui/view/android/a;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lai/f;Lai/f;Lbb/a;)V

    invoke-virtual {v10, v0}, Lcom/google/googlenav/ui/view/android/R;->add(Ljava/lang/Object;)V

    goto :goto_21

    :cond_75
    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->z()Z

    move-result v0

    if-eqz v0, :cond_82

    invoke-direct {p0, v10}, Lcom/google/googlenav/ui/wizard/ce;->d(Lcom/google/googlenav/ui/view/android/R;)V

    :cond_82
    invoke-direct {p0, v10}, Lcom/google/googlenav/ui/wizard/ce;->e(Lcom/google/googlenav/ui/view/android/R;)V

    invoke-direct {p0, v10}, Lcom/google/googlenav/ui/wizard/ce;->f(Lcom/google/googlenav/ui/view/android/R;)V

    invoke-direct {p0, v10}, Lcom/google/googlenav/ui/wizard/ce;->h(Lcom/google/googlenav/ui/view/android/R;)V

    invoke-virtual {p0, v10}, Lcom/google/googlenav/ui/wizard/ce;->b(Lcom/google/googlenav/ui/view/android/R;)V

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->i()Z

    move-result v0

    if-eqz v0, :cond_9b

    invoke-direct {p0, v10}, Lcom/google/googlenav/ui/wizard/ce;->c(Lcom/google/googlenav/ui/view/android/R;)V

    :cond_9b
    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->aw()Z

    move-result v0

    if-eqz v0, :cond_b2

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->s()Z

    move-result v0

    if-eqz v0, :cond_b2

    invoke-virtual {p0, v10}, Lcom/google/googlenav/ui/wizard/ce;->a(Lcom/google/googlenav/ui/view/android/R;)V

    :cond_b2
    invoke-static {}, Lcom/google/googlenav/M;->E()Z

    move-result v0

    if-eqz v0, :cond_bb

    invoke-direct {p0, v10}, Lcom/google/googlenav/ui/wizard/ce;->g(Lcom/google/googlenav/ui/view/android/R;)V

    :cond_bb
    invoke-direct {p0, v10}, Lcom/google/googlenav/ui/wizard/ce;->i(Lcom/google/googlenav/ui/view/android/R;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ce;->g:LaY/Y;

    invoke-virtual {v0}, LaY/Y;->L()Ljava/util/Vector;

    move-result-object v11

    const/4 v0, 0x0

    move v9, v0

    :goto_c6
    invoke-virtual {v11}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v9, v0, :cond_12b

    invoke-virtual {v11, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, LaY/i;

    invoke-direct {p0, v4}, Lcom/google/googlenav/ui/wizard/ce;->a(LaY/i;)Z

    move-result v0

    if-eqz v0, :cond_dd

    :goto_d9
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_c6

    :cond_dd
    invoke-virtual {v4}, LaY/i;->ax()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10a

    new-instance v0, Lcom/google/googlenav/ui/view/android/a;

    const/4 v1, 0x0

    invoke-virtual {v4}, LaY/i;->aM()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/googlenav/ui/bw;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v4}, LaY/i;->aN()Lah/f;

    move-result-object v4

    check-cast v4, Lai/f;

    const/4 v5, 0x0

    new-instance v6, Lbb/a;

    const/16 v7, 0x3ea

    const/4 v8, 0x0

    invoke-direct {v6, v7, v9, v8}, Lbb/a;-><init>(IILjava/lang/Object;)V

    sget-object v7, Lcom/google/googlenav/ui/bg;->ay:Lcom/google/googlenav/ui/bg;

    sget-object v8, Lcom/google/googlenav/ui/bg;->y:Lcom/google/googlenav/ui/bg;

    invoke-direct/range {v0 .. v8}, Lcom/google/googlenav/ui/view/android/a;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Lai/f;Lai/f;Lbb/a;Lcom/google/googlenav/ui/bg;Lcom/google/googlenav/ui/bg;)V

    invoke-virtual {v10, v0}, Lcom/google/googlenav/ui/view/android/R;->add(Ljava/lang/Object;)V

    goto :goto_d9

    :cond_10a
    new-instance v0, Lcom/google/googlenav/ui/view/android/a;

    invoke-virtual {v4}, LaY/i;->aM()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/googlenav/ui/bw;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v4}, LaY/i;->aN()Lah/f;

    move-result-object v3

    check-cast v3, Lai/f;

    const/4 v4, 0x0

    new-instance v5, Lbb/a;

    const/16 v6, 0x3ea

    const/4 v7, 0x0

    invoke-direct {v5, v6, v9, v7}, Lbb/a;-><init>(IILjava/lang/Object;)V

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ui/view/android/a;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lai/f;Lai/f;Lbb/a;)V

    invoke-virtual {v10, v0}, Lcom/google/googlenav/ui/view/android/R;->add(Ljava/lang/Object;)V

    goto :goto_d9

    :cond_12b
    return-object v10
.end method

.method public a(LaY/Y;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/ce;->g:LaY/Y;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/ce;->l()V

    return-void
.end method

.method protected a(Landroid/view/View;)V
    .registers 5

    const/4 v2, 0x0

    const v0, 0x7f0f0011

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const/16 v1, 0xc5

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/ce;->g:LaY/Y;

    invoke-virtual {v1}, LaY/Y;->P()Z

    move-result v1

    if-nez v1, :cond_1e

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_1e
    new-instance v1, Lcom/google/googlenav/ui/wizard/cf;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/wizard/cf;-><init>(Lcom/google/googlenav/ui/wizard/ce;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    const v0, 0x7f0f0012

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const/16 v1, 0x62

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/google/googlenav/ui/wizard/cg;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/wizard/cg;-><init>(Lcom/google/googlenav/ui/wizard/ce;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    const v0, 0x7f0f000f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method protected a(Lcom/google/googlenav/ui/view/android/R;)V
    .registers 10

    const/4 v2, 0x0

    new-instance v0, Lcom/google/googlenav/ui/view/android/a;

    const/16 v1, 0x272

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/ce;->c:Lcom/google/googlenav/ui/bw;

    invoke-virtual {v3}, Lcom/google/googlenav/ui/bw;->p()Lah/g;

    move-result-object v3

    sget-char v4, Lcom/google/googlenav/ui/bw;->ad:C

    invoke-interface {v3, v4}, Lah/g;->e(C)Lah/f;

    move-result-object v3

    check-cast v3, Lai/f;

    iget-object v4, p0, Lcom/google/googlenav/ui/wizard/ce;->c:Lcom/google/googlenav/ui/bw;

    invoke-virtual {v4}, Lcom/google/googlenav/ui/bw;->p()Lah/g;

    move-result-object v4

    sget-char v5, Lcom/google/googlenav/ui/bw;->aq:C

    invoke-interface {v4, v5}, Lah/g;->e(C)Lah/f;

    move-result-object v4

    check-cast v4, Lai/f;

    new-instance v5, Lbb/a;

    const/16 v6, 0x3ed

    const/4 v7, -0x1

    invoke-direct {v5, v6, v7, v2}, Lbb/a;-><init>(IILjava/lang/Object;)V

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ui/view/android/a;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lai/f;Lai/f;Lbb/a;)V

    invoke-virtual {p1, v0}, Lcom/google/googlenav/ui/view/android/R;->add(Ljava/lang/Object;)V

    return-void
.end method

.method b(LaY/Y;)Lcom/google/googlenav/ui/aD;
    .registers 5

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ce;->j:Lcom/google/googlenav/ui/aD;

    if-nez v0, :cond_13

    new-instance v0, Lcom/google/googlenav/ui/aD;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/ce;->b:Lcom/google/googlenav/ui/wizard/hM;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/ce;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/wizard/hM;->A()Lcom/google/googlenav/android/ac;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lcom/google/googlenav/ui/aD;-><init>(Lcom/google/googlenav/ui/wizard/hM;LaY/Y;Lcom/google/googlenav/android/ac;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/ce;->j:Lcom/google/googlenav/ui/aD;

    :cond_13
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ce;->j:Lcom/google/googlenav/ui/aD;

    return-object v0
.end method

.method protected b()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ce;->f:Lcom/google/googlenav/ui/view/android/bs;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ce;->f:Lcom/google/googlenav/ui/view/android/bs;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bs;->dismiss()V

    :cond_9
    new-instance v0, Lcom/google/googlenav/ui/wizard/ch;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/wizard/ch;-><init>(Lcom/google/googlenav/ui/wizard/ce;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/ce;->f:Lcom/google/googlenav/ui/view/android/bs;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ce;->f:Lcom/google/googlenav/ui/view/android/bs;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bs;->show()V

    return-void
.end method

.method b(Lcom/google/googlenav/ui/view/android/R;)V
    .registers 9

    const/4 v1, 0x0

    invoke-static {}, Lcom/google/googlenav/layer/f;->a()Lcom/google/googlenav/layer/f;

    move-result-object v2

    const-string v0, "__LAYERS"

    invoke-virtual {v2, v0}, Lcom/google/googlenav/layer/f;->a(Ljava/lang/String;)Lcom/google/googlenav/layer/i;

    move-result-object v0

    if-eqz v0, :cond_4c

    invoke-virtual {v0}, Lcom/google/googlenav/layer/i;->c()[Ljava/lang/String;

    move-result-object v0

    :goto_11
    array-length v3, v0

    :goto_12
    if-ge v1, v3, :cond_4f

    aget-object v4, v0, v1

    invoke-virtual {v2, v4}, Lcom/google/googlenav/layer/f;->b(Ljava/lang/String;)Lcom/google/googlenav/layer/e;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/googlenav/layer/e;->d()Lcom/google/googlenav/layer/m;

    move-result-object v6

    invoke-virtual {v2, v4}, Lcom/google/googlenav/layer/f;->d(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_49

    if-eqz v6, :cond_49

    invoke-virtual {v5}, Lcom/google/googlenav/layer/e;->e()Z

    move-result v4

    if-eqz v4, :cond_49

    invoke-virtual {v6}, Lcom/google/googlenav/layer/m;->c()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Las/b;->b(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_49

    invoke-virtual {v6}, Lcom/google/googlenav/layer/m;->l()Z

    move-result v4

    if-nez v4, :cond_49

    invoke-direct {p0, v6}, Lcom/google/googlenav/ui/wizard/ce;->b(Lcom/google/googlenav/layer/m;)Z

    move-result v4

    if-nez v4, :cond_49

    invoke-direct {p0, v6}, Lcom/google/googlenav/ui/wizard/ce;->a(Lcom/google/googlenav/layer/m;)Lcom/google/googlenav/ui/view/android/a;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/google/googlenav/ui/view/android/R;->add(Ljava/lang/Object;)V

    :cond_49
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_4c
    new-array v0, v1, [Ljava/lang/String;

    goto :goto_11

    :cond_4f
    return-void
.end method

.method protected c()V
    .registers 3

    invoke-super {p0}, Lcom/google/googlenav/ui/wizard/z;->c()V

    invoke-static {}, Lcom/google/googlenav/layer/f;->a()Lcom/google/googlenav/layer/f;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/layer/f;->a(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/ce;->j:Lcom/google/googlenav/ui/aD;

    return-void
.end method

.method public o()V
    .registers 1

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/ce;->a()V

    return-void
.end method
