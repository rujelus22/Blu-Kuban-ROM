.class Lcom/google/googlenav/ui/wizard/X;
.super Lax/bl;


# instance fields
.field final synthetic b:Lcom/google/googlenav/ca;

.field final synthetic c:Lcom/google/googlenav/ui/wizard/R;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/R;Lax/bq;Lcom/google/googlenav/ca;)V
    .registers 4

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/X;->c:Lcom/google/googlenav/ui/wizard/R;

    iput-object p3, p0, Lcom/google/googlenav/ui/wizard/X;->b:Lcom/google/googlenav/ca;

    invoke-direct {p0, p2}, Lax/bl;-><init>(Lax/bq;)V

    return-void
.end method

.method private c()V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/X;->c:Lcom/google/googlenav/ui/wizard/R;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/R;->a:Lcom/google/googlenav/ui/wizard/P;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/P;->g(Lcom/google/googlenav/ui/wizard/P;)Lcom/google/googlenav/ui/wizard/aj;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/aj;->c(Z)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/X;->b:Lcom/google/googlenav/ca;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/X;->c:Lcom/google/googlenav/ui/wizard/R;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/R;->a:Lcom/google/googlenav/ui/wizard/P;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/P;->h(Lcom/google/googlenav/ui/wizard/P;)Lcom/google/googlenav/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/h;->a()Lam/b;

    move-result-object v1

    iput-object v1, v0, Lcom/google/googlenav/ca;->c:Lam/b;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/X;->c:Lcom/google/googlenav/ui/wizard/R;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/R;->a:Lcom/google/googlenav/ui/wizard/P;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/P;->a(Lcom/google/googlenav/ui/wizard/P;)Lcom/google/googlenav/ui/wizard/ad;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/X;->c:Lcom/google/googlenav/ui/wizard/R;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/R;->a:Lcom/google/googlenav/ui/wizard/P;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/P;->h(Lcom/google/googlenav/ui/wizard/P;)Lcom/google/googlenav/h;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/X;->b:Lcom/google/googlenav/ca;

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/ui/wizard/ad;->a(Lcom/google/googlenav/h;Lcom/google/googlenav/ca;)V

    return-void
.end method


# virtual methods
.method public E_()V
    .registers 4

    invoke-super {p0}, Lax/bl;->E_()V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/X;->b:Lcom/google/googlenav/ca;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/X;->c:Lcom/google/googlenav/ui/wizard/R;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/R;->a:Lcom/google/googlenav/ui/wizard/P;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/P;->h(Lcom/google/googlenav/ui/wizard/P;)Lcom/google/googlenav/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/h;->a()Lam/b;

    move-result-object v1

    iput-object v1, v0, Lcom/google/googlenav/ca;->d:Lam/b;

    const/16 v0, 0x9c

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/bw;->a(II)Landroid/widget/Toast;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/X;->c:Lcom/google/googlenav/ui/wizard/R;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/R;->a:Lcom/google/googlenav/ui/wizard/P;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/P;->a(Lcom/google/googlenav/ui/wizard/P;)Lcom/google/googlenav/ui/wizard/ad;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/X;->c:Lcom/google/googlenav/ui/wizard/R;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/R;->a:Lcom/google/googlenav/ui/wizard/P;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/P;->h(Lcom/google/googlenav/ui/wizard/P;)Lcom/google/googlenav/h;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/X;->b:Lcom/google/googlenav/ca;

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/ui/wizard/ad;->a(Lcom/google/googlenav/h;Lcom/google/googlenav/ca;)V

    return-void
.end method

.method public F_()V
    .registers 1

    invoke-super {p0}, Lax/bl;->F_()V

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/X;->c()V

    return-void
.end method

.method public i()V
    .registers 1

    invoke-super {p0}, Lax/bl;->i()V

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/X;->c()V

    return-void
.end method
