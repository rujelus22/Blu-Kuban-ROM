.class public LaY/ba;
.super LaY/t;


# direct methods
.method protected constructor <init>(Lcom/google/googlenav/ui/D;LaJ/p;LaJ/u;Lcom/google/googlenav/ui/af;Lcom/google/googlenav/layer/m;LaJ/k;)V
    .registers 7

    invoke-direct/range {p0 .. p6}, LaY/t;-><init>(Lcom/google/googlenav/ui/D;LaJ/p;LaJ/u;Lcom/google/googlenav/ui/af;Lcom/google/googlenav/layer/m;LaJ/k;)V

    return-void
.end method


# virtual methods
.method public aD()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public aM()Ljava/lang/String;
    .registers 2

    const/16 v0, 0x217

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public aN()Lah/f;
    .registers 3

    iget-object v0, p0, LaY/ba;->a:Lcom/google/googlenav/ui/bw;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bw;->p()Lah/g;

    move-result-object v0

    sget-char v1, Lcom/google/googlenav/ui/bw;->ag:C

    invoke-interface {v0, v1}, Lah/g;->e(C)Lah/f;

    move-result-object v0

    return-object v0
.end method

.method public aO()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public aV()Z
    .registers 2

    invoke-virtual {p0}, LaY/ba;->b()Lcom/google/googlenav/layer/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/layer/m;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-super {p0}, LaY/t;->aV()Z

    :cond_11
    invoke-virtual {p0}, LaY/ba;->bH()V

    iget-object v0, p0, LaY/ba;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->I()Lcom/google/googlenav/ui/av;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/av;->c()V

    const/4 v0, 0x1

    return v0
.end method

.method public aW()V
    .registers 2

    invoke-virtual {p0}, LaY/ba;->b()Lcom/google/googlenav/layer/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/layer/m;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-super {p0}, LaY/t;->aW()V

    :cond_11
    invoke-virtual {p0}, LaY/ba;->bI()V

    iget-object v0, p0, LaY/ba;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->I()Lcom/google/googlenav/ui/av;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/av;->c()V

    return-void
.end method

.method public ax()I
    .registers 2

    const/4 v0, 0x7

    return v0
.end method

.method public b(LaJ/B;)I
    .registers 3

    invoke-virtual {p0}, LaY/ba;->b()Lcom/google/googlenav/layer/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/layer/m;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, -0x1

    :goto_f
    return v0

    :cond_10
    invoke-super {p0, p1}, LaY/t;->b(LaJ/B;)I

    move-result v0

    goto :goto_f
.end method

.method protected bH()V
    .registers 3

    iget-object v0, p0, LaY/ba;->i:Lcom/google/googlenav/ui/af;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/googlenav/ui/af;->a(Z)V

    return-void
.end method

.method protected bI()V
    .registers 3

    iget-object v0, p0, LaY/ba;->i:Lcom/google/googlenav/ui/af;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/googlenav/ui/af;->a(Z)V

    return-void
.end method

.method protected bx()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method protected j()V
    .registers 1

    return-void
.end method
