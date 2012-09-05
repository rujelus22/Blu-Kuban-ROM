.class public LaY/J;
.super LaY/aD;


# direct methods
.method public constructor <init>(LaY/m;)V
    .registers 2

    invoke-direct {p0, p1}, LaY/aD;-><init>(LaY/m;)V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/googlenav/ui/bl;
    .registers 6

    const/4 v0, 0x1

    new-array v1, v0, [Lcom/google/googlenav/ui/bh;

    const/4 v0, 0x0

    sget-object v2, Lcom/google/googlenav/ui/bg;->w:Lcom/google/googlenav/ui/bg;

    invoke-static {p0, v2}, Lcom/google/googlenav/ui/bh;->b(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x4

    const/4 v2, 0x5

    if-ne p2, v2, :cond_12

    const/16 v0, 0xb

    :cond_12
    new-instance v2, Lcom/google/googlenav/ui/bm;

    invoke-direct {v2}, Lcom/google/googlenav/ui/bm;-><init>()V

    invoke-virtual {v2, v1}, Lcom/google/googlenav/ui/bm;->a([Lcom/google/googlenav/ui/bh;)Lcom/google/googlenav/ui/bm;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/googlenav/ui/bm;->a(Ljava/lang/String;)Lcom/google/googlenav/ui/bm;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/bm;->d(I)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/googlenav/ui/bm;->f(I)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    invoke-static {p2}, Lcom/google/googlenav/ui/bw;->f(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/google/googlenav/ui/bw;->d()Lcom/google/googlenav/ui/bw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/ui/bw;->p()Lah/g;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/bn;->a(Ljava/lang/String;Lah/g;)Lcom/google/googlenav/ui/bn;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bm;->a(Lcom/google/googlenav/ui/bn;)Lcom/google/googlenav/ui/bm;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bm;->a()Lcom/google/googlenav/ui/bl;

    move-result-object v0

    return-object v0
.end method

.method private a(Lax/aP;Ljava/util/Vector;)V
    .registers 6

    invoke-direct {p0}, LaY/J;->b()LaY/K;

    move-result-object v0

    invoke-virtual {v0, p1}, LaY/K;->b(Lax/aP;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const/16 v0, 0x50

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lax/aP;->v()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x142

    invoke-static {v0, v1, v2}, LaY/J;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/googlenav/ui/bl;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_1d
    return-void
.end method

.method private b()LaY/K;
    .registers 2

    iget-object v0, p0, LaY/J;->a:LaY/i;

    check-cast v0, LaY/K;

    return-object v0
.end method


# virtual methods
.method public a(Lax/aP;)Lcom/google/googlenav/ui/view/android/ap;
    .registers 9

    invoke-direct {p0}, LaY/J;->b()LaY/K;

    move-result-object v1

    invoke-virtual {v1}, LaY/K;->j()LaX/g;

    move-result-object v2

    if-nez p1, :cond_41

    invoke-virtual {v2}, LaX/g;->b()J

    move-result-wide v3

    invoke-virtual {v1}, LaY/K;->b()Lax/aS;

    move-result-object v5

    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, v3, v4}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v5, v0}, Lax/aS;->a(Ljava/lang/Long;)Lax/aP;

    move-result-object v0

    if-nez v0, :cond_2c

    invoke-virtual {v5}, Lax/aS;->d()Lax/aP;

    move-result-object v0

    invoke-virtual {v0}, Lax/aP;->q()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, LaX/g;->a(J)V

    :cond_2c
    move-object p1, v0

    :cond_2d
    :goto_2d
    invoke-virtual {p1}, Lax/aP;->b()Z

    move-result v0

    if-eqz v0, :cond_63

    new-instance v0, Lcom/google/googlenav/ui/view/android/bh;

    invoke-virtual {v1}, LaY/K;->bR()Lax/S;

    move-result-object v2

    invoke-virtual {v2, p1}, Lax/S;->a(Lax/aP;)Lbb/o;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/ui/view/android/bh;-><init>(Lcom/google/googlenav/ui/p;Lbb/f;)V

    :goto_40
    return-object v0

    :cond_41
    invoke-virtual {v1}, LaY/K;->bH()Lax/aP;

    move-result-object v0

    if-ne v0, p1, :cond_2d

    invoke-virtual {v2}, LaX/g;->b()J

    move-result-wide v3

    invoke-virtual {p1}, Lax/aP;->q()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-eqz v0, :cond_2d

    invoke-virtual {p1}, Lax/aP;->q()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, LaX/g;->a(J)V

    goto :goto_2d

    :cond_63
    new-instance v0, Lcom/google/googlenav/ui/view/android/be;

    invoke-virtual {v1}, LaY/K;->bR()Lax/S;

    move-result-object v2

    invoke-virtual {v2, p1}, Lax/S;->b(Lax/aP;)Lbb/o;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/ui/view/android/be;-><init>(Lcom/google/googlenav/ui/p;Lbb/f;)V

    goto :goto_40
.end method

.method public a(Lcom/google/googlenav/ah;)Lcom/google/googlenav/ui/view/android/ap;
    .registers 3

    invoke-direct {p0}, LaY/J;->b()LaY/K;

    move-result-object v0

    invoke-virtual {v0}, LaY/K;->bH()Lax/aP;

    move-result-object v0

    invoke-virtual {p0, v0}, LaY/J;->a(Lax/aP;)Lcom/google/googlenav/ui/view/android/ap;

    move-result-object v0

    return-object v0
.end method

.method protected b(Lcom/google/googlenav/ah;)Lcom/google/googlenav/ui/view/android/ap;
    .registers 10

    const/4 v1, 0x2

    const/4 v7, 0x1

    const/4 v3, 0x0

    new-instance v4, Ljava/util/Vector;

    const/4 v0, 0x3

    invoke-direct {v4, v0}, Ljava/util/Vector;-><init>(I)V

    const/16 v0, 0x1a0

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x134

    invoke-static {v0, v2}, Lcom/google/googlenav/ui/bp;->a(Ljava/lang/String;I)Lcom/google/googlenav/ui/bl;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const/16 v0, 0x18f

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x135

    invoke-static {v0, v2}, Lcom/google/googlenav/ui/bp;->a(Ljava/lang/String;I)Lcom/google/googlenav/ui/bl;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const/16 v0, 0x19a

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x136

    invoke-static {v0, v2}, Lcom/google/googlenav/ui/bp;->a(Ljava/lang/String;I)Lcom/google/googlenav/ui/bl;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    new-instance v0, Lbb/o;

    const/16 v2, 0x199

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Lbb/o;-><init>(ILjava/lang/String;Lbb/n;Ljava/util/Vector;Lbb/p;[Laq/a;)V

    iput-boolean v7, v0, Lbb/o;->u:Z

    invoke-direct {p0}, LaY/J;->b()LaY/K;

    move-result-object v2

    invoke-virtual {v2}, LaY/K;->bH()Lax/aP;

    move-result-object v2

    invoke-virtual {v2}, Lax/aP;->n()Z

    move-result v2

    if-nez v2, :cond_5d

    iput v1, v0, Lbb/o;->w:I

    :goto_55
    new-instance v1, Lcom/google/googlenav/ui/view/android/bj;

    iget-object v2, p0, LaY/J;->a:LaY/i;

    invoke-direct {v1, v2, v0}, Lcom/google/googlenav/ui/view/android/bj;-><init>(Lcom/google/googlenav/ui/p;Lbb/o;)V

    return-object v1

    :cond_5d
    iget-object v1, p0, LaY/J;->a:LaY/i;

    check-cast v1, LaY/K;

    invoke-virtual {v1}, LaY/K;->bH()Lax/aP;

    move-result-object v1

    invoke-virtual {v1}, Lax/aP;->o()Z

    move-result v1

    if-eqz v1, :cond_6e

    iput v7, v0, Lbb/o;->w:I

    goto :goto_55

    :cond_6e
    const/4 v1, 0x0

    iput v1, v0, Lbb/o;->w:I

    goto :goto_55
.end method

.method protected c(Lcom/google/googlenav/ah;)Lcom/google/googlenav/ui/view/android/ap;
    .registers 9

    const/4 v3, 0x0

    invoke-direct {p0}, LaY/J;->b()LaY/K;

    move-result-object v0

    invoke-virtual {v0}, LaY/K;->bH()Lax/aP;

    move-result-object v0

    new-instance v4, Ljava/util/Vector;

    const/4 v1, 0x3

    invoke-direct {v4, v1}, Ljava/util/Vector;-><init>(I)V

    invoke-direct {p0, v0, v4}, LaY/J;->a(Lax/aP;Ljava/util/Vector;)V

    new-instance v0, Lbb/o;

    const/4 v1, 0x2

    const/16 v2, 0xcc

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Lbb/o;-><init>(ILjava/lang/String;Lbb/n;Ljava/util/Vector;Lbb/p;[Laq/a;)V

    new-instance v1, Lcom/google/googlenav/ui/view/android/bj;

    iget-object v2, p0, LaY/J;->a:LaY/i;

    invoke-direct {v1, v2, v0}, Lcom/google/googlenav/ui/view/android/bj;-><init>(Lcom/google/googlenav/ui/p;Lbb/o;)V

    return-object v1
.end method
