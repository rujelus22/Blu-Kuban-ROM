.class LaY/bl;
.super Ljava/lang/Object;

# interfaces
.implements LaY/bp;


# instance fields
.field final synthetic a:LaY/bh;


# direct methods
.method constructor <init>(LaY/bh;)V
    .registers 2

    iput-object p1, p0, LaY/bl;->a:LaY/bh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 6

    iget-object v0, p0, LaY/bl;->a:LaY/bh;

    invoke-static {v0}, LaY/bh;->b(LaY/bh;)V

    iget-object v0, p0, LaY/bl;->a:LaY/bh;

    invoke-static {}, Lbb/e;->a()Lbb/e;

    move-result-object v1

    const/16 v2, 0x13

    new-instance v3, LaY/bm;

    invoke-direct {v3, p0}, LaY/bm;-><init>(LaY/bl;)V

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lbb/e;->a(ILbb/c;Ljava/lang/String;)Lbb/d;

    move-result-object v1

    invoke-static {v0, v1}, LaY/bh;->a(LaY/bh;Lbb/d;)Lbb/d;

    iget-object v0, p0, LaY/bl;->a:LaY/bh;

    invoke-static {v0}, LaY/bh;->c(LaY/bh;)V

    iget-object v0, p0, LaY/bl;->a:LaY/bh;

    invoke-static {v0}, LaY/bh;->d(LaY/bh;)Lcom/google/googlenav/ui/view/android/ce;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/ce;->e()V

    return-void
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, LaY/bl;->a:LaY/bh;

    invoke-static {v0}, LaY/bh;->e(LaY/bh;)Lbb/B;

    move-result-object v0

    invoke-virtual {v0}, Lbb/B;->d()V

    iget-object v0, p0, LaY/bl;->a:LaY/bh;

    invoke-static {v0}, LaY/bh;->e(LaY/bh;)Lbb/B;

    move-result-object v0

    invoke-virtual {v0}, Lbb/B;->f()V

    iget-object v0, p0, LaY/bl;->a:LaY/bh;

    invoke-static {v0}, LaY/bh;->f(LaY/bh;)Lbb/d;

    move-result-object v0

    if-eqz v0, :cond_23

    iget-object v0, p0, LaY/bl;->a:LaY/bh;

    invoke-static {v0}, LaY/bh;->f(LaY/bh;)Lbb/d;

    move-result-object v0

    invoke-interface {v0}, Lbb/d;->c()V

    :cond_23
    iget-object v0, p0, LaY/bl;->a:LaY/bh;

    invoke-static {v0}, LaY/bh;->g(LaY/bh;)V

    invoke-static {}, Lbb/e;->a()Lbb/e;

    move-result-object v0

    invoke-virtual {v0}, Lbb/e;->e()V

    return-void
.end method

.method public c()V
    .registers 2

    iget-object v0, p0, LaY/bl;->a:LaY/bh;

    invoke-static {v0}, LaY/bh;->d(LaY/bh;)Lcom/google/googlenav/ui/view/android/ce;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/ce;->f()V

    return-void
.end method

.method public d()V
    .registers 3

    iget-object v0, p0, LaY/bl;->a:LaY/bh;

    iget-object v1, p0, LaY/bl;->a:LaY/bh;

    invoke-static {v1}, LaY/bh;->h(LaY/bh;)Landroid/content/res/Configuration;

    move-result-object v1

    invoke-static {v0, v1}, LaY/bh;->a(LaY/bh;Landroid/content/res/Configuration;)V

    iget-object v0, p0, LaY/bl;->a:LaY/bh;

    invoke-static {v0}, LaY/bh;->d(LaY/bh;)Lcom/google/googlenav/ui/view/android/ce;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/ce;->e()V

    return-void
.end method

.method public e()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
