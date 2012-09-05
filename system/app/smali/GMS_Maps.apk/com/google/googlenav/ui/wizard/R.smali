.class Lcom/google/googlenav/ui/wizard/R;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/ui/wizard/ay;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/P;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/P;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/R;->a:Lcom/google/googlenav/ui/wizard/P;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/R;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/R;->h()V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/R;Lcom/google/googlenav/ui/wizard/aX;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/R;->a(Lcom/google/googlenav/ui/wizard/aX;)V

    return-void
.end method

.method private a(Lcom/google/googlenav/ui/wizard/aX;)V
    .registers 10

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/R;->a:Lcom/google/googlenav/ui/wizard/P;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/P;->d(Lcom/google/googlenav/ui/wizard/P;)Lcom/google/googlenav/ui/wizard/hM;

    move-result-object v0

    const/16 v1, 0x86

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x85

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2b5

    invoke-static {v3}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x62

    invoke-static {v4}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v7, p1

    invoke-virtual/range {v0 .. v7}, Lcom/google/googlenav/ui/wizard/hM;->a(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/google/googlenav/ui/wizard/aX;)V

    return-void
.end method

.method static synthetic b(Lcom/google/googlenav/ui/wizard/R;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/R;->i()V

    return-void
.end method

.method private h()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/R;->a:Lcom/google/googlenav/ui/wizard/P;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/R;->a:Lcom/google/googlenav/ui/wizard/P;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/P;->c(Lcom/google/googlenav/ui/wizard/P;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/wizard/P;->a(Lcom/google/googlenav/ui/wizard/P;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_2d

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/R;->a:Lcom/google/googlenav/ui/wizard/P;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/P;->g(Lcom/google/googlenav/ui/wizard/P;)Lcom/google/googlenav/ui/wizard/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/aj;->v()Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/R;->a:Lcom/google/googlenav/ui/wizard/P;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/P;->g(Lcom/google/googlenav/ui/wizard/P;)Lcom/google/googlenav/ui/wizard/aj;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/aj;->a(Z)V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/R;->d()V

    const/16 v0, 0x87

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/bw;->a(II)Landroid/widget/Toast;

    :cond_2d
    return-void
.end method

.method private i()V
    .registers 4

    invoke-static {}, Lcom/google/googlenav/ui/bw;->d()Lcom/google/googlenav/ui/bw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bw;->Z()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x88

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    new-instance v0, Lcom/google/googlenav/ca;

    invoke-direct {v0}, Lcom/google/googlenav/ca;-><init>()V

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/R;->a:Lcom/google/googlenav/ui/wizard/P;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/P;->g(Lcom/google/googlenav/ui/wizard/P;)Lcom/google/googlenav/ui/wizard/aj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/aj;->v()Z

    move-result v1

    if-eqz v1, :cond_3f

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/R;->a:Lcom/google/googlenav/ui/wizard/P;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/P;->h(Lcom/google/googlenav/ui/wizard/P;)Lcom/google/googlenav/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/h;->a()Lam/b;

    move-result-object v1

    iput-object v1, v0, Lcom/google/googlenav/ca;->a:Lam/b;

    :goto_2f
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/R;->a:Lcom/google/googlenav/ui/wizard/P;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/P;->a(Lcom/google/googlenav/ui/wizard/P;)Lcom/google/googlenav/ui/wizard/ad;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/R;->a:Lcom/google/googlenav/ui/wizard/P;

    invoke-static {v2}, Lcom/google/googlenav/ui/wizard/P;->h(Lcom/google/googlenav/ui/wizard/P;)Lcom/google/googlenav/h;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/ui/wizard/ad;->a(Lcom/google/googlenav/h;Lcom/google/googlenav/ca;)V

    return-void

    :cond_3f
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/R;->a:Lcom/google/googlenav/ui/wizard/P;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/P;->h(Lcom/google/googlenav/ui/wizard/P;)Lcom/google/googlenav/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/h;->a()Lam/b;

    move-result-object v1

    iput-object v1, v0, Lcom/google/googlenav/ca;->b:Lam/b;

    goto :goto_2f
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/R;->a:Lcom/google/googlenav/ui/wizard/P;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/P;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/google/googlenav/h;)V
    .registers 4

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/google/googlenav/h;->l()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/R;->a:Lcom/google/googlenav/ui/wizard/P;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/P;->b(Lcom/google/googlenav/ui/wizard/P;)Lcom/google/googlenav/ui/wizard/aB;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/ui/wizard/S;

    invoke-direct {v1, p0, p1}, Lcom/google/googlenav/ui/wizard/S;-><init>(Lcom/google/googlenav/ui/wizard/R;Lcom/google/googlenav/h;)V

    invoke-virtual {v0, p1, v1}, Lcom/google/googlenav/ui/wizard/aB;->a(Lcom/google/googlenav/h;Lcom/google/googlenav/ui/wizard/aG;)V

    :goto_15
    return-void

    :cond_16
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/R;->a:Lcom/google/googlenav/ui/wizard/P;

    invoke-virtual {v0, p1, v1}, Lcom/google/googlenav/ui/wizard/P;->a(Lcom/google/googlenav/h;Lax/j;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/R;->a:Lcom/google/googlenav/ui/wizard/P;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/P;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/R;->a:Lcom/google/googlenav/ui/wizard/P;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/P;->a(Lcom/google/googlenav/ui/wizard/P;)Lcom/google/googlenav/ui/wizard/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ad;->a()V

    goto :goto_15
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/R;->a:Lcom/google/googlenav/ui/wizard/P;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/wizard/P;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Z)V
    .registers 5

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/R;->a:Lcom/google/googlenav/ui/wizard/P;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/P;->d(Lcom/google/googlenav/ui/wizard/P;)Lcom/google/googlenav/ui/wizard/hM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->J()Lax/k;

    move-result-object v0

    invoke-virtual {v0}, Lax/k;->k()Lax/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Lax/j;->b(Z)V

    new-instance v0, Lcom/google/googlenav/ca;

    invoke-direct {v0}, Lcom/google/googlenav/ca;-><init>()V

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/R;->a:Lcom/google/googlenav/ui/wizard/P;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/P;->a(Lcom/google/googlenav/ui/wizard/P;)Lcom/google/googlenav/ui/wizard/ad;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/R;->a:Lcom/google/googlenav/ui/wizard/P;

    invoke-static {v2}, Lcom/google/googlenav/ui/wizard/P;->h(Lcom/google/googlenav/ui/wizard/P;)Lcom/google/googlenav/h;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/ui/wizard/ad;->a(Lcom/google/googlenav/h;Lcom/google/googlenav/ca;)V

    return-void
.end method

.method public b()V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/R;->a:Lcom/google/googlenav/ui/wizard/P;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/P;->d(Lcom/google/googlenav/ui/wizard/P;)Lcom/google/googlenav/ui/wizard/hM;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/R;->a:Lcom/google/googlenav/ui/wizard/P;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/P;->c(Lcom/google/googlenav/ui/wizard/P;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/ui/wizard/T;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/wizard/T;-><init>(Lcom/google/googlenav/ui/wizard/R;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/ui/wizard/hM;->a(Ljava/util/List;Lcom/google/googlenav/ui/wizard/eU;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 5

    new-instance v0, Lcom/google/googlenav/ui/wizard/v;

    invoke-direct {v0}, Lcom/google/googlenav/ui/wizard/v;-><init>()V

    if-eqz p1, :cond_38

    :goto_7
    iput-object p1, v0, Lcom/google/googlenav/ui/wizard/v;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/R;->a:Lcom/google/googlenav/ui/wizard/P;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/P;->i(Lcom/google/googlenav/ui/wizard/P;)Lcom/google/googlenav/aU;

    move-result-object v1

    iput-object v1, v0, Lcom/google/googlenav/ui/wizard/v;->b:Lcom/google/googlenav/aU;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/R;->a:Lcom/google/googlenav/ui/wizard/P;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/P;->j(Lcom/google/googlenav/ui/wizard/P;)Lcom/google/googlenav/ui/at;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/at;->j()LaJ/B;

    move-result-object v1

    iput-object v1, v0, Lcom/google/googlenav/ui/wizard/v;->c:LaJ/B;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/R;->a:Lcom/google/googlenav/ui/wizard/P;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/P;->g(Lcom/google/googlenav/ui/wizard/P;)Lcom/google/googlenav/ui/wizard/aj;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/wizard/aj;->b(Z)V

    new-instance v1, Lcom/google/googlenav/ui/wizard/Y;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/wizard/Y;-><init>(Lcom/google/googlenav/ui/wizard/R;)V

    iput-object v1, v0, Lcom/google/googlenav/ui/wizard/v;->d:Lcom/google/googlenav/ui/wizard/w;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/R;->a:Lcom/google/googlenav/ui/wizard/P;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/P;->d(Lcom/google/googlenav/ui/wizard/P;)Lcom/google/googlenav/ui/wizard/hM;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/wizard/hM;->a(Lcom/google/googlenav/ui/wizard/v;)V

    return-void

    :cond_38
    const-string p1, ""

    goto :goto_7
.end method

.method public c()V
    .registers 3

    invoke-static {}, Lcom/google/googlenav/M;->r()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "Check in"

    invoke-static {v0}, Lac/a;->b(Ljava/lang/String;)V

    :cond_b
    invoke-static {}, Lax/au;->l()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/R;->a:Lcom/google/googlenav/ui/wizard/P;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/P;->e(Lcom/google/googlenav/ui/wizard/P;)V

    :goto_16
    return-void

    :cond_17
    new-instance v0, Lcom/google/googlenav/ui/wizard/U;

    invoke-static {}, Lax/au;->h()Lax/au;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/googlenav/ui/wizard/U;-><init>(Lcom/google/googlenav/ui/wizard/R;Lax/bq;)V

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/R;->a:Lcom/google/googlenav/ui/wizard/P;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/P;->d(Lcom/google/googlenav/ui/wizard/P;)Lcom/google/googlenav/ui/wizard/hM;

    move-result-object v1

    invoke-virtual {v0, v1}, Lax/bl;->a(Lcom/google/googlenav/ui/wizard/hM;)V

    goto :goto_16
.end method

.method public d()V
    .registers 4

    invoke-static {}, Lax/aa;->l()Z

    move-result v0

    if-nez v0, :cond_2d

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/R;->a:Lcom/google/googlenav/ui/wizard/P;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/P;->g(Lcom/google/googlenav/ui/wizard/P;)Lcom/google/googlenav/ui/wizard/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/aj;->v()Z

    move-result v0

    if-eqz v0, :cond_2d

    const/4 v0, 0x1

    :goto_13
    new-instance v1, Lcom/google/googlenav/ui/wizard/V;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/wizard/V;-><init>(Lcom/google/googlenav/ui/wizard/R;)V

    if-eqz v0, :cond_2f

    new-instance v0, Lcom/google/googlenav/ui/wizard/W;

    invoke-static {}, Lax/aa;->h()Lax/aa;

    move-result-object v2

    invoke-direct {v0, p0, v2, v1}, Lcom/google/googlenav/ui/wizard/W;-><init>(Lcom/google/googlenav/ui/wizard/R;Lax/bq;Lcom/google/googlenav/ui/wizard/aX;)V

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/R;->a:Lcom/google/googlenav/ui/wizard/P;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/P;->d(Lcom/google/googlenav/ui/wizard/P;)Lcom/google/googlenav/ui/wizard/hM;

    move-result-object v1

    invoke-virtual {v0, v1}, Lax/bl;->a(Lcom/google/googlenav/ui/wizard/hM;)V

    :goto_2c
    return-void

    :cond_2d
    const/4 v0, 0x0

    goto :goto_13

    :cond_2f
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/R;->a:Lcom/google/googlenav/ui/wizard/P;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/P;->g(Lcom/google/googlenav/ui/wizard/P;)Lcom/google/googlenav/ui/wizard/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/aj;->v()Z

    move-result v0

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/R;->a:Lcom/google/googlenav/ui/wizard/P;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/R;->a:Lcom/google/googlenav/ui/wizard/P;

    invoke-static {v2}, Lcom/google/googlenav/ui/wizard/P;->c(Lcom/google/googlenav/ui/wizard/P;)Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/googlenav/ui/wizard/P;->a(Lcom/google/googlenav/ui/wizard/P;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_4d

    invoke-direct {p0, v1}, Lcom/google/googlenav/ui/wizard/R;->a(Lcom/google/googlenav/ui/wizard/aX;)V

    goto :goto_2c

    :cond_4d
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/R;->i()V

    goto :goto_2c
.end method

.method public e()V
    .registers 4

    new-instance v0, Lcom/google/googlenav/ca;

    invoke-direct {v0}, Lcom/google/googlenav/ca;-><init>()V

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/R;->a:Lcom/google/googlenav/ui/wizard/P;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/P;->g(Lcom/google/googlenav/ui/wizard/P;)Lcom/google/googlenav/ui/wizard/aj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/aj;->w()Z

    move-result v1

    if-eqz v1, :cond_4f

    invoke-static {}, Lax/aa;->l()Z

    move-result v1

    if-nez v1, :cond_42

    invoke-static {}, Lax/aa;->h()Lax/aa;

    move-result-object v1

    const/16 v2, 0x842

    invoke-virtual {v1, v2}, Lax/aa;->a(I)V

    new-instance v1, Lcom/google/googlenav/ui/wizard/X;

    invoke-static {}, Lax/aa;->h()Lax/aa;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/google/googlenav/ui/wizard/X;-><init>(Lcom/google/googlenav/ui/wizard/R;Lax/bq;Lcom/google/googlenav/ca;)V

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/R;->a:Lcom/google/googlenav/ui/wizard/P;

    invoke-static {v2}, Lcom/google/googlenav/ui/wizard/P;->d(Lcom/google/googlenav/ui/wizard/P;)Lcom/google/googlenav/ui/wizard/hM;

    move-result-object v2

    invoke-virtual {v1, v2}, Lax/bl;->a(Lcom/google/googlenav/ui/wizard/hM;)V

    :goto_32
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/R;->a:Lcom/google/googlenav/ui/wizard/P;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/P;->a(Lcom/google/googlenav/ui/wizard/P;)Lcom/google/googlenav/ui/wizard/ad;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/R;->a:Lcom/google/googlenav/ui/wizard/P;

    invoke-static {v2}, Lcom/google/googlenav/ui/wizard/P;->h(Lcom/google/googlenav/ui/wizard/P;)Lcom/google/googlenav/h;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/ui/wizard/ad;->a(Lcom/google/googlenav/h;Lcom/google/googlenav/ca;)V

    return-void

    :cond_42
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/R;->a:Lcom/google/googlenav/ui/wizard/P;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/P;->h(Lcom/google/googlenav/ui/wizard/P;)Lcom/google/googlenav/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/h;->a()Lam/b;

    move-result-object v1

    iput-object v1, v0, Lcom/google/googlenav/ca;->d:Lam/b;

    goto :goto_32

    :cond_4f
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/R;->a:Lcom/google/googlenav/ui/wizard/P;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/P;->h(Lcom/google/googlenav/ui/wizard/P;)Lcom/google/googlenav/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/h;->a()Lam/b;

    move-result-object v1

    iput-object v1, v0, Lcom/google/googlenav/ca;->c:Lam/b;

    goto :goto_32
.end method

.method public f()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/R;->a:Lcom/google/googlenav/ui/wizard/P;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/P;->f(Lcom/google/googlenav/ui/wizard/P;)Lcom/google/googlenav/ui/wizard/Z;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/Z;->e()V

    return-void
.end method

.method public g()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/R;->a:Lcom/google/googlenav/ui/wizard/P;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/P;->f(Lcom/google/googlenav/ui/wizard/P;)Lcom/google/googlenav/ui/wizard/Z;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/Z;->b()V

    return-void
.end method
