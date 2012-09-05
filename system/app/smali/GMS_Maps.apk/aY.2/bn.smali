.class LaY/bn;
.super Ljava/lang/Object;

# interfaces
.implements LaY/bp;


# instance fields
.field final synthetic a:LaY/bh;


# direct methods
.method constructor <init>(LaY/bh;)V
    .registers 2

    iput-object p1, p0, LaY/bn;->a:LaY/bh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    invoke-static {}, Lcom/google/googlenav/actionbar/a;->a()Lcom/google/googlenav/actionbar/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/actionbar/a;->d()V

    invoke-static {}, Lbb/e;->a()Lbb/e;

    move-result-object v0

    invoke-virtual {v0}, Lbb/e;->h()V

    iget-object v0, p0, LaY/bn;->a:LaY/bh;

    invoke-static {v0}, LaY/bh;->b(LaY/bh;)V

    iget-object v0, p0, LaY/bn;->a:LaY/bh;

    invoke-static {v0}, LaY/bh;->c(LaY/bh;)V

    invoke-static {}, Lbb/e;->a()Lbb/e;

    move-result-object v0

    invoke-virtual {v0}, Lbb/e;->i()V

    iget-object v0, p0, LaY/bn;->a:LaY/bh;

    invoke-static {v0}, LaY/bh;->d(LaY/bh;)Lcom/google/googlenav/ui/view/android/ce;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/ce;->e()V

    return-void
.end method

.method public b()V
    .registers 5

    iget-object v0, p0, LaY/bn;->a:LaY/bh;

    invoke-static {v0}, LaY/bh;->e(LaY/bh;)Lbb/B;

    move-result-object v0

    invoke-virtual {v0}, Lbb/B;->d()V

    iget-object v0, p0, LaY/bn;->a:LaY/bh;

    invoke-static {v0}, LaY/bh;->e(LaY/bh;)Lbb/B;

    move-result-object v0

    invoke-virtual {v0}, Lbb/B;->f()V

    iget-object v0, p0, LaY/bn;->a:LaY/bh;

    invoke-static {v0}, LaY/bh;->f(LaY/bh;)Lbb/d;

    move-result-object v0

    if-eqz v0, :cond_23

    iget-object v0, p0, LaY/bn;->a:LaY/bh;

    invoke-static {v0}, LaY/bh;->f(LaY/bh;)Lbb/d;

    move-result-object v0

    invoke-interface {v0}, Lbb/d;->c()V

    :cond_23
    iget-object v0, p0, LaY/bn;->a:LaY/bh;

    invoke-static {v0}, LaY/bh;->g(LaY/bh;)V

    invoke-static {}, Lbb/e;->a()Lbb/e;

    move-result-object v0

    invoke-virtual {v0}, Lbb/e;->e()V

    iget-object v0, p0, LaY/bn;->a:LaY/bh;

    iget-object v0, v0, LaY/bh;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->v()Z

    move-result v0

    if-eqz v0, :cond_5a

    invoke-static {}, Lcom/google/googlenav/actionbar/a;->a()Lcom/google/googlenav/actionbar/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/actionbar/a;->e()V

    :goto_40
    invoke-static {}, Lbb/e;->a()Lbb/e;

    move-result-object v0

    invoke-virtual {v0}, Lbb/e;->h()V

    invoke-static {}, Lbb/e;->a()Lbb/e;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, LaY/bn;->a:LaY/bh;

    invoke-static {v2}, LaY/bh;->e(LaY/bh;)Lbb/B;

    move-result-object v2

    invoke-virtual {v2}, Lbb/B;->j()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lbb/e;->a(II)V

    return-void

    :cond_5a
    const/4 v0, 0x1

    new-instance v1, LaY/bo;

    iget-object v2, p0, LaY/bn;->a:LaY/bh;

    iget-object v2, v2, LaY/bh;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/D;->aq()Lap/c;

    move-result-object v2

    iget-object v3, p0, LaY/bn;->a:LaY/bh;

    iget-object v3, v3, LaY/bh;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v3}, Lcom/google/googlenav/ui/D;->ae()Lcom/google/googlenav/android/ac;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3, v0}, LaY/bo;-><init>(LaY/bn;Lap/c;Lcom/google/googlenav/android/ac;Z)V

    invoke-virtual {v1}, LaY/bo;->g()V

    goto :goto_40
.end method

.method public c()V
    .registers 2

    iget-object v0, p0, LaY/bn;->a:LaY/bh;

    invoke-static {v0}, LaY/bh;->d(LaY/bh;)Lcom/google/googlenav/ui/view/android/ce;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/ce;->f()V

    return-void
.end method

.method public d()V
    .registers 3

    iget-object v0, p0, LaY/bn;->a:LaY/bh;

    invoke-static {v0}, LaY/bh;->d(LaY/bh;)Lcom/google/googlenav/ui/view/android/ce;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/ce;->e()V

    iget-object v0, p0, LaY/bn;->a:LaY/bh;

    iget-object v1, p0, LaY/bn;->a:LaY/bh;

    invoke-static {v1}, LaY/bh;->h(LaY/bh;)Landroid/content/res/Configuration;

    move-result-object v1

    invoke-static {v0, v1}, LaY/bh;->a(LaY/bh;Landroid/content/res/Configuration;)V

    return-void
.end method

.method public e()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
