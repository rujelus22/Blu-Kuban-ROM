.class public Lcom/google/googlenav/ui/f;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/googlenav/ui/D;

.field private final b:Lcom/google/googlenav/android/D;

.field private c:Lbb/d;

.field private final d:Landroid/graphics/Point;

.field private e:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/D;Lcom/google/googlenav/android/D;)V
    .registers 5

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/google/googlenav/ui/f;->d:Landroid/graphics/Point;

    iput-object p1, p0, Lcom/google/googlenav/ui/f;->a:Lcom/google/googlenav/ui/D;

    iput-object p2, p0, Lcom/google/googlenav/ui/f;->b:Lcom/google/googlenav/android/D;

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/f;)Lcom/google/googlenav/ui/D;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/f;->a:Lcom/google/googlenav/ui/D;

    return-object v0
.end method

.method static synthetic a(Lcom/google/googlenav/ui/f;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/f;->e:Ljava/lang/Boolean;

    return-object p1
.end method

.method private a(Lcom/google/googlenav/ui/at;)Z
    .registers 3

    invoke-virtual {p1}, Lcom/google/googlenav/ui/at;->o()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p1}, Lcom/google/googlenav/ui/at;->g()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p1}, Lcom/google/googlenav/ui/at;->n()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method static synthetic b(Lcom/google/googlenav/ui/f;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/googlenav/ui/f;->e()V

    return-void
.end method

.method private e()V
    .registers 8

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/google/googlenav/ui/f;->e:Ljava/lang/Boolean;

    if-nez v0, :cond_11

    const-string v0, "HAS_SHOWN_CALIBRATE_COMPASS_NOTIFICATION"

    new-instance v1, Lcom/google/googlenav/ui/l;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/l;-><init>(Lcom/google/googlenav/ui/f;)V

    invoke-static {v0, v4, v1}, Lax/be;->a(Ljava/lang/String;ILax/bj;)V

    :cond_10
    :goto_10
    return-void

    :cond_11
    invoke-static {}, LaP/h;->i()LaP/h;

    move-result-object v0

    invoke-virtual {v0}, LaP/h;->a()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {v0}, LaP/h;->b()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_10

    iget-object v0, p0, Lcom/google/googlenav/ui/f;->e:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_10

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/googlenav/ui/f;->e:Ljava/lang/Boolean;

    const-string v0, "HAS_SHOWN_CALIBRATE_COMPASS_NOTIFICATION"

    const/4 v1, 0x1

    invoke-static {v0, v1, v5}, Lax/be;->a(Ljava/lang/String;ILax/bk;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/f;->a:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->aC()Lcom/google/googlenav/ui/wizard/hM;

    move-result-object v0

    const/16 v1, 0x5f

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x5e

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2b5

    invoke-static {v3}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v3

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/google/googlenav/ui/wizard/hM;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/google/googlenav/ui/wizard/aX;)V

    goto :goto_10
.end method


# virtual methods
.method public a()V
    .registers 5

    iget-object v0, p0, Lcom/google/googlenav/ui/f;->a:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->ax()Lcom/google/googlenav/ui/bP;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bP;->c()V

    invoke-static {}, Lcom/google/googlenav/android/a;->f()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-static {}, Lbb/e;->a()Lbb/e;

    move-result-object v0

    const/4 v1, 0x6

    new-instance v2, Lcom/google/googlenav/ui/g;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/g;-><init>(Lcom/google/googlenav/ui/f;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lbb/e;->a(ILbb/c;Ljava/lang/String;)Lbb/d;

    :cond_1d
    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->an()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-virtual {p0}, Lcom/google/googlenav/ui/f;->b()V

    :cond_2a
    return-void
.end method

.method public a(Lcom/google/googlenav/ui/C;)V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/f;->c:Lbb/d;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/google/googlenav/ui/f;->c:Lbb/d;

    iget-object v1, p0, Lcom/google/googlenav/ui/f;->a:Lcom/google/googlenav/ui/D;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/D;->aw()Lcom/google/googlenav/ui/at;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/at;->B()LaE/h;

    move-result-object v1

    invoke-virtual {v1}, LaE/h;->j()Z

    move-result v1

    invoke-interface {v0, v1}, Lbb/d;->a(Z)V

    iget-object v0, p0, Lcom/google/googlenav/ui/f;->c:Lbb/d;

    iget-object v1, p0, Lcom/google/googlenav/ui/f;->d:Landroid/graphics/Point;

    invoke-interface {v0, v1, p1}, Lbb/d;->a(Landroid/graphics/Point;Lcom/google/googlenav/ui/C;)V

    :cond_1e
    return-void
.end method

.method public a(Lcom/google/googlenav/ui/bh;)V
    .registers 5

    invoke-static {}, Lbb/e;->a()Lbb/e;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/googlenav/ui/bh;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v1}, LK/bR;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbb/e;->a(Ljava/util/List;)V

    return-void
.end method

.method public b()V
    .registers 5

    const/4 v3, 0x0

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->q()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-static {}, Lbb/e;->a()Lbb/e;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1, v3, v3}, Lbb/e;->a(ILbb/c;Ljava/lang/String;)Lbb/d;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/view/android/ao;

    invoke-static {}, Law/g;->a()Law/g;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/ao;->e()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0, v3}, Law/g;->a(Landroid/view/View;Law/f;)V

    :cond_22
    invoke-static {}, Lbb/e;->a()Lbb/e;

    move-result-object v0

    const/16 v1, 0xb

    new-instance v2, Lcom/google/googlenav/ui/h;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/h;-><init>(Lcom/google/googlenav/ui/f;)V

    invoke-virtual {v0, v1, v2, v3}, Lbb/e;->a(ILbb/c;Ljava/lang/String;)Lbb/d;

    const/16 v0, 0x40e

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/ui/bg;->bM:Lcom/google/googlenav/ui/bg;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/bh;->b(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/f;->a(Lcom/google/googlenav/ui/bh;)V

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->q()Z

    move-result v0

    if-nez v0, :cond_57

    invoke-static {}, Lbb/e;->a()Lbb/e;

    move-result-object v0

    const/16 v1, 0xc

    new-instance v2, Lcom/google/googlenav/ui/i;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/i;-><init>(Lcom/google/googlenav/ui/f;)V

    invoke-virtual {v0, v1, v2, v3}, Lbb/e;->a(ILbb/c;Ljava/lang/String;)Lbb/d;

    :cond_57
    invoke-static {}, Lbb/e;->a()Lbb/e;

    move-result-object v0

    const/16 v1, 0xd

    new-instance v2, Lcom/google/googlenav/ui/j;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/j;-><init>(Lcom/google/googlenav/ui/f;)V

    invoke-virtual {v0, v1, v2, v3}, Lbb/e;->a(ILbb/c;Ljava/lang/String;)Lbb/d;

    invoke-static {}, Lbb/e;->a()Lbb/e;

    move-result-object v0

    const/16 v1, 0xe

    new-instance v2, Lcom/google/googlenav/ui/k;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/k;-><init>(Lcom/google/googlenav/ui/f;)V

    invoke-virtual {v0, v1, v2, v3}, Lbb/e;->a(ILbb/c;Ljava/lang/String;)Lbb/d;

    return-void
.end method

.method public c()V
    .registers 4

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/google/googlenav/ui/f;->a:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->aw()Lcom/google/googlenav/ui/at;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/f;->b:Lcom/google/googlenav/android/D;

    invoke-virtual {v1}, Lcom/google/googlenav/android/D;->b()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/f;->a(Lcom/google/googlenav/ui/at;)Z

    move-result v1

    if-eqz v1, :cond_26

    iget-object v0, p0, Lcom/google/googlenav/ui/f;->b:Lcom/google/googlenav/android/D;

    invoke-virtual {v0}, Lcom/google/googlenav/android/D;->a()Z

    move-result v0

    if-nez v0, :cond_20

    invoke-direct {p0}, Lcom/google/googlenav/ui/f;->e()V

    :cond_20
    iget-object v0, p0, Lcom/google/googlenav/ui/f;->b:Lcom/google/googlenav/android/D;

    invoke-virtual {v0}, Lcom/google/googlenav/android/D;->e()V

    :goto_25
    return-void

    :cond_26
    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/at;->a(Z)V

    iget-object v0, p0, Lcom/google/googlenav/ui/f;->b:Lcom/google/googlenav/android/D;

    invoke-virtual {v0}, Lcom/google/googlenav/android/D;->g()V

    goto :goto_25

    :cond_2f
    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/at;->a(Z)V

    goto :goto_25
.end method

.method public d()Z
    .registers 2

    invoke-static {}, Lbb/e;->a()Lbb/e;

    move-result-object v0

    invoke-virtual {v0}, Lbb/e;->d()Z

    move-result v0

    return v0
.end method
