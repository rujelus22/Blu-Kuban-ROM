.class Lcom/google/googlenav/ui/wizard/aa;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/ui/wizard/I;
.implements Lcom/google/googlenav/ui/wizard/ah;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/P;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/ui/wizard/P;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/aa;->a:Lcom/google/googlenav/ui/wizard/P;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/ui/wizard/P;Lcom/google/googlenav/ui/wizard/Q;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/aa;-><init>(Lcom/google/googlenav/ui/wizard/P;)V

    return-void
.end method

.method private b(ZLcom/google/googlenav/a;)V
    .registers 6

    if-eqz p1, :cond_36

    new-instance v0, Lcom/google/googlenav/ca;

    invoke-direct {v0}, Lcom/google/googlenav/ca;-><init>()V

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/aa;->a:Lcom/google/googlenav/ui/wizard/P;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/P;->c(Lcom/google/googlenav/ui/wizard/P;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/google/googlenav/q;->a(Ljava/util/List;)Lcom/google/googlenav/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/q;->a()Lam/b;

    move-result-object v1

    iput-object v1, v0, Lcom/google/googlenav/ca;->e:Lam/b;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/aa;->a:Lcom/google/googlenav/ui/wizard/P;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/P;->a(Lcom/google/googlenav/ui/wizard/P;)Lcom/google/googlenav/ui/wizard/ad;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/aa;->a:Lcom/google/googlenav/ui/wizard/P;

    invoke-static {v2}, Lcom/google/googlenav/ui/wizard/P;->h(Lcom/google/googlenav/ui/wizard/P;)Lcom/google/googlenav/h;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/ui/wizard/ad;->a(Lcom/google/googlenav/h;Lcom/google/googlenav/ca;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aa;->a:Lcom/google/googlenav/ui/wizard/P;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/P;->a(Lcom/google/googlenav/ui/wizard/P;)Lcom/google/googlenav/ui/wizard/ad;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/aa;->a:Lcom/google/googlenav/ui/wizard/P;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/P;->l(Lcom/google/googlenav/ui/wizard/P;)LaD/i;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/google/googlenav/ui/wizard/ad;->a(Lcom/google/googlenav/a;LaD/i;)V

    :goto_35
    return-void

    :cond_36
    const/16 v0, 0xa3

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/bw;->a(II)Landroid/widget/Toast;

    goto :goto_35
.end method


# virtual methods
.method public a(Lax/j;)V
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aa;->a:Lcom/google/googlenav/ui/wizard/P;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/P;->h(Lcom/google/googlenav/ui/wizard/P;)Lcom/google/googlenav/h;

    move-result-object v3

    if-eqz v3, :cond_50

    invoke-virtual {v3}, Lcom/google/googlenav/h;->a()Lam/b;

    move-result-object v0

    invoke-virtual {p1, v0}, Lax/j;->a(Lam/b;)Z

    move-result v4

    invoke-virtual {v3}, Lcom/google/googlenav/h;->a()Lam/b;

    move-result-object v0

    invoke-virtual {p1, v0}, Lax/j;->b(Lam/b;)Z

    move-result v0

    if-nez v0, :cond_51

    invoke-static {}, Lax/aa;->l()Z

    move-result v0

    if-eqz v0, :cond_51

    move v0, v1

    :goto_23
    invoke-virtual {v3, v4, v0}, Lcom/google/googlenav/h;->a(ZZ)V

    invoke-virtual {p1}, Lax/j;->d()Lam/b;

    move-result-object v0

    if-eqz v0, :cond_53

    invoke-virtual {v3}, Lcom/google/googlenav/h;->h()Z

    move-result v4

    if-nez v4, :cond_53

    invoke-static {v0}, Lax/aL;->c(Lam/b;)Ljava/util/List;

    move-result-object v0

    :goto_36
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/aa;->a:Lcom/google/googlenav/ui/wizard/P;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/P;->g(Lcom/google/googlenav/ui/wizard/P;)Lcom/google/googlenav/ui/wizard/aj;

    move-result-object v1

    if-eqz v1, :cond_50

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/aa;->a:Lcom/google/googlenav/ui/wizard/P;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/P;->h(Lcom/google/googlenav/ui/wizard/P;)Lcom/google/googlenav/h;

    move-result-object v1

    if-ne v3, v1, :cond_50

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/aa;->a:Lcom/google/googlenav/ui/wizard/P;

    invoke-virtual {v1, v3, p1}, Lcom/google/googlenav/ui/wizard/P;->a(Lcom/google/googlenav/h;Lax/j;)V

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/aa;->a:Lcom/google/googlenav/ui/wizard/P;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/wizard/P;->a(Ljava/util/List;)V

    :cond_50
    return-void

    :cond_51
    move v0, v2

    goto :goto_23

    :cond_53
    invoke-virtual {v3}, Lcom/google/googlenav/h;->h()Z

    move-result v0

    if-nez v0, :cond_66

    new-array v0, v1, [Lax/aL;

    invoke-static {}, Lax/aL;->g()Lax/aL;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {v0}, LK/bR;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_36

    :cond_66
    new-array v0, v1, [Lax/aL;

    invoke-static {}, Lax/aL;->h()Lax/aL;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {v0}, LK/bR;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_36
.end method

.method public a(Lcom/google/googlenav/aU;)V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aa;->a:Lcom/google/googlenav/ui/wizard/P;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/P;->g(Lcom/google/googlenav/ui/wizard/P;)Lcom/google/googlenav/ui/wizard/aj;

    move-result-object v0

    if-eqz v0, :cond_26

    if-eqz p1, :cond_26

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aa;->a:Lcom/google/googlenav/ui/wizard/P;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/P;->g(Lcom/google/googlenav/ui/wizard/P;)Lcom/google/googlenav/ui/wizard/aj;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/googlenav/aU;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/aj;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aa;->a:Lcom/google/googlenav/ui/wizard/P;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/P;->g(Lcom/google/googlenav/ui/wizard/P;)Lcom/google/googlenav/ui/wizard/aj;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/aj;->b(Z)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aa;->a:Lcom/google/googlenav/ui/wizard/P;

    invoke-static {v0, p1}, Lcom/google/googlenav/ui/wizard/P;->a(Lcom/google/googlenav/ui/wizard/P;Lcom/google/googlenav/aU;)Lcom/google/googlenav/aU;

    :cond_26
    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aa;->a:Lcom/google/googlenav/ui/wizard/P;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/P;->g(Lcom/google/googlenav/ui/wizard/P;)Lcom/google/googlenav/ui/wizard/aj;

    move-result-object v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aa;->a:Lcom/google/googlenav/ui/wizard/P;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/P;->g(Lcom/google/googlenav/ui/wizard/P;)Lcom/google/googlenav/ui/wizard/aj;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/wizard/aj;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aa;->a:Lcom/google/googlenav/ui/wizard/P;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/P;->g(Lcom/google/googlenav/ui/wizard/P;)Lcom/google/googlenav/ui/wizard/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/aj;->m()V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aa;->a:Lcom/google/googlenav/ui/wizard/P;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/P;->g(Lcom/google/googlenav/ui/wizard/P;)Lcom/google/googlenav/ui/wizard/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/aj;->h()V

    :cond_23
    return-void
.end method

.method public a(ZLaD/n;)V
    .registers 8

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aa;->a:Lcom/google/googlenav/ui/wizard/P;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/P;->g(Lcom/google/googlenav/ui/wizard/P;)Lcom/google/googlenav/ui/wizard/aj;

    move-result-object v0

    if-eqz v0, :cond_3a

    if-eqz p1, :cond_3a

    invoke-virtual {p2}, LaD/n;->e()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_3a

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aa;->a:Lcom/google/googlenav/ui/wizard/P;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/P;->g(Lcom/google/googlenav/ui/wizard/P;)Lcom/google/googlenav/ui/wizard/aj;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/ui/view/dialog/C;

    new-instance v2, Lcom/google/googlenav/ui/wizard/ab;

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/aa;->a:Lcom/google/googlenav/ui/wizard/P;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/google/googlenav/ui/wizard/ab;-><init>(Lcom/google/googlenav/ui/wizard/P;Lcom/google/googlenav/ui/wizard/Q;)V

    invoke-direct {v1, p2, v2}, Lcom/google/googlenav/ui/view/dialog/C;-><init>(LaD/n;Lcom/google/googlenav/ui/view/dialog/H;)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/aj;->a(Landroid/app/Dialog;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aa;->a:Lcom/google/googlenav/ui/wizard/P;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/P;->g(Lcom/google/googlenav/ui/wizard/P;)Lcom/google/googlenav/ui/wizard/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/aj;->y()V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aa;->a:Lcom/google/googlenav/ui/wizard/P;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/P;->g(Lcom/google/googlenav/ui/wizard/P;)Lcom/google/googlenav/ui/wizard/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/aj;->m()V

    :goto_39
    return-void

    :cond_3a
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aa;->a:Lcom/google/googlenav/ui/wizard/P;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/P;->k(Lcom/google/googlenav/ui/wizard/P;)V

    goto :goto_39
.end method

.method public a(ZLcom/google/googlenav/a;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/wizard/aa;->b(ZLcom/google/googlenav/a;)V

    return-void
.end method
