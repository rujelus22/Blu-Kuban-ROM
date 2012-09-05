.class Lcom/google/googlenav/ui/ab;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/login/i;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/D;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/ui/D;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/ab;->a:Lcom/google/googlenav/ui/D;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/ui/D;Lcom/google/googlenav/ui/E;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/ab;-><init>(Lcom/google/googlenav/ui/D;)V

    return-void
.end method


# virtual methods
.method public B_()V
    .registers 1

    return-void
.end method

.method public C_()V
    .registers 1

    return-void
.end method

.method public E_()V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/ab;->a:Lcom/google/googlenav/ui/D;

    invoke-static {v0}, Lcom/google/googlenav/ui/D;->l(Lcom/google/googlenav/ui/D;)Lcom/google/googlenav/ui/av;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/av;->e()V

    iget-object v0, p0, Lcom/google/googlenav/ui/ab;->a:Lcom/google/googlenav/ui/D;

    invoke-static {v0}, Lcom/google/googlenav/ui/D;->l(Lcom/google/googlenav/ui/D;)Lcom/google/googlenav/ui/av;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/av;->f()V

    invoke-static {}, LaM/e;->a()LaM/e;

    move-result-object v0

    invoke-virtual {v0}, LaM/e;->c()LaM/f;

    move-result-object v0

    invoke-interface {v0}, LaM/f;->E_()V

    invoke-static {}, LaM/e;->a()LaM/e;

    move-result-object v0

    invoke-virtual {v0}, LaM/e;->d()LaM/f;

    move-result-object v0

    invoke-interface {v0}, LaM/f;->E_()V

    new-instance v0, Lax/b;

    invoke-direct {v0}, Lax/b;-><init>()V

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/M;->i()Z

    move-result v1

    if-eqz v1, :cond_43

    new-instance v1, Lax/u;

    invoke-static {}, Lax/aa;->h()Lax/aa;

    move-result-object v2

    invoke-direct {v1, v2}, Lax/u;-><init>(Lax/bq;)V

    invoke-virtual {v0, v1}, Lax/b;->a(Lax/d;)V

    :cond_43
    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/M;->j()Z

    move-result v1

    if-eqz v1, :cond_59

    new-instance v1, Lax/at;

    invoke-static {}, Lax/au;->h()Lax/au;

    move-result-object v2

    invoke-direct {v1, v2}, Lax/at;-><init>(Lax/bq;)V

    invoke-virtual {v0, v1}, Lax/b;->a(Lax/d;)V

    :cond_59
    invoke-virtual {v0}, Lax/b;->a()V

    return-void
.end method

.method public F_()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/ab;->a:Lcom/google/googlenav/ui/D;

    invoke-static {v0}, Lcom/google/googlenav/ui/D;->l(Lcom/google/googlenav/ui/D;)Lcom/google/googlenav/ui/av;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/av;->e()V

    iget-object v0, p0, Lcom/google/googlenav/ui/ab;->a:Lcom/google/googlenav/ui/D;

    invoke-static {v0}, Lcom/google/googlenav/ui/D;->l(Lcom/google/googlenav/ui/D;)Lcom/google/googlenav/ui/av;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/av;->f()V

    invoke-static {}, LaM/e;->a()LaM/e;

    move-result-object v0

    if-eqz v0, :cond_26

    invoke-virtual {v0}, LaM/e;->c()LaM/f;

    move-result-object v1

    invoke-interface {v1}, LaM/f;->F_()V

    invoke-virtual {v0}, LaM/e;->d()LaM/f;

    move-result-object v0

    invoke-interface {v0}, LaM/f;->F_()V

    :cond_26
    iget-object v0, p0, Lcom/google/googlenav/ui/ab;->a:Lcom/google/googlenav/ui/D;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/googlenav/ui/D;->b:Z

    :try_start_2b
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;
    :try_end_2e
    .catch Ljava/lang/IllegalStateException; {:try_start_2b .. :try_end_2e} :catch_36

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    :goto_35
    return-void

    :catch_36
    move-exception v0

    goto :goto_35
.end method

.method public i()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/ab;->a:Lcom/google/googlenav/ui/D;

    invoke-static {v0}, Lcom/google/googlenav/ui/D;->l(Lcom/google/googlenav/ui/D;)Lcom/google/googlenav/ui/av;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/av;->e()V

    iget-object v0, p0, Lcom/google/googlenav/ui/ab;->a:Lcom/google/googlenav/ui/D;

    invoke-static {v0}, Lcom/google/googlenav/ui/D;->l(Lcom/google/googlenav/ui/D;)Lcom/google/googlenav/ui/av;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/av;->f()V

    invoke-static {}, LaM/e;->a()LaM/e;

    move-result-object v0

    invoke-virtual {v0}, LaM/e;->c()LaM/f;

    move-result-object v0

    invoke-interface {v0}, LaM/f;->i()V

    invoke-static {}, LaM/e;->a()LaM/e;

    move-result-object v0

    invoke-virtual {v0}, LaM/e;->d()LaM/f;

    move-result-object v0

    invoke-interface {v0}, LaM/f;->i()V

    return-void
.end method
