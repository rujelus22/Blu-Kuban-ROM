.class Lcom/google/googlenav/ui/wizard/eK;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/ui/wizard/cR;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/eA;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/eA;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/eK;->a:Lcom/google/googlenav/ui/wizard/eA;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public P_()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public Q_()V
    .registers 1

    return-void
.end method

.method public a(Lau/x;Ljava/lang/Long;Lam/b;Lcom/google/googlenav/aV;)V
    .registers 11

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_39

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eK;->a:Lcom/google/googlenav/ui/wizard/eA;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/eA;->d(Lcom/google/googlenav/ui/wizard/eA;)LaQ/g;

    move-result-object v0

    if-eqz v0, :cond_39

    invoke-virtual {p1}, Lau/x;->q()Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eK;->a:Lcom/google/googlenav/ui/wizard/eA;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/eA;->e(Lcom/google/googlenav/ui/wizard/eA;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eK;->a:Lcom/google/googlenav/ui/wizard/eA;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/eA;->d(Lcom/google/googlenav/ui/wizard/eA;)LaQ/g;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/eK;->a:Lcom/google/googlenav/ui/wizard/eA;

    invoke-static {v2}, Lcom/google/googlenav/ui/wizard/eA;->f(Lcom/google/googlenav/ui/wizard/eA;)LaE/h;

    move-result-object v2

    invoke-virtual {v2}, LaE/h;->m()Z

    move-result v2

    invoke-virtual {v0, v1, v3, v2}, LaQ/g;->a(Ljava/lang/String;ZZ)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eK;->a:Lcom/google/googlenav/ui/wizard/eA;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/eA;->f(Lcom/google/googlenav/ui/wizard/eA;)LaE/h;

    move-result-object v0

    invoke-virtual {v0}, LaE/h;->u()V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eK;->a:Lcom/google/googlenav/ui/wizard/eA;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/eA;->g(Lcom/google/googlenav/ui/wizard/eA;)V

    :cond_39
    :goto_39
    return-void

    :cond_3a
    invoke-virtual {p1}, Lau/x;->f()LaJ/B;

    move-result-object v0

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eK;->a:Lcom/google/googlenav/ui/wizard/eA;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/eA;->e(Lcom/google/googlenav/ui/wizard/eA;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eK;->a:Lcom/google/googlenav/ui/wizard/eA;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/eA;->d(Lcom/google/googlenav/ui/wizard/eA;)LaQ/g;

    move-result-object v0

    invoke-virtual {p1}, Lau/x;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v3}, LaQ/g;->a(Ljava/lang/String;ZZ)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eK;->a:Lcom/google/googlenav/ui/wizard/eA;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/eA;->h(Lcom/google/googlenav/ui/wizard/eA;)LaJ/u;

    move-result-object v0

    invoke-virtual {p1}, Lau/x;->m()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1}, Lau/x;->n()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {}, Lcom/google/googlenav/actionbar/a;->a()Lcom/google/googlenav/actionbar/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/actionbar/a;->h()I

    move-result v3

    invoke-virtual {v0, v1, v2, v4, v3}, LaJ/u;->a(IIII)LaJ/Y;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/eK;->a:Lcom/google/googlenav/ui/wizard/eA;

    invoke-virtual {p1}, Lau/x;->h()Ljava/lang/String;

    move-result-object v2

    new-instance v3, LaJ/H;

    invoke-virtual {p1}, Lau/x;->f()LaJ/B;

    move-result-object v4

    iget-object v5, p0, Lcom/google/googlenav/ui/wizard/eK;->a:Lcom/google/googlenav/ui/wizard/eA;

    invoke-static {v5}, Lcom/google/googlenav/ui/wizard/eA;->h(Lcom/google/googlenav/ui/wizard/eA;)LaJ/u;

    move-result-object v5

    invoke-virtual {v5}, LaJ/u;->f()LaJ/H;

    move-result-object v5

    invoke-virtual {v5}, LaJ/H;->c()I

    move-result v5

    invoke-direct {v3, v4, v0, v5}, LaJ/H;-><init>(LaJ/B;LaJ/Y;I)V

    invoke-static {v1, v2, v3, p4}, Lcom/google/googlenav/ui/wizard/eA;->a(Lcom/google/googlenav/ui/wizard/eA;Ljava/lang/String;LaJ/H;Lcom/google/googlenav/aV;)V

    goto :goto_39
.end method
