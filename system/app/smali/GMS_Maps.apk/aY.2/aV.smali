.class public LaY/aV;
.super LaY/t;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/D;LaJ/p;LaJ/u;Lcom/google/googlenav/ui/af;Lcom/google/googlenav/layer/m;LaJ/k;)V
    .registers 12

    const/4 v4, 0x6

    invoke-direct/range {p0 .. p6}, LaY/t;-><init>(Lcom/google/googlenav/ui/D;LaJ/p;LaJ/u;Lcom/google/googlenav/ui/af;Lcom/google/googlenav/layer/m;LaJ/k;)V

    iget-object v0, p0, LaY/aV;->a:Lcom/google/googlenav/ui/bw;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bw;->p()Lah/g;

    move-result-object v0

    sget-char v1, Lcom/google/googlenav/ui/bw;->ay:C

    invoke-interface {v0, v1}, Lah/g;->e(C)Lah/f;

    move-result-object v0

    invoke-static {v0}, Lah/j;->d(Lah/f;)Lah/f;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p5, v1}, Lcom/google/googlenav/layer/m;->a(I)Lcom/google/googlenav/e;

    move-result-object v1

    if-eqz v1, :cond_36

    invoke-virtual {v1}, Lcom/google/googlenav/e;->a()Lah/f;

    move-result-object v1

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v2

    invoke-virtual {v2, v4}, Laf/b;->c(I)I

    move-result v2

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v3

    invoke-virtual {v3, v4}, Laf/b;->c(I)I

    move-result v3

    invoke-interface {v0}, Lah/f;->c()Lah/e;

    move-result-object v4

    invoke-interface {v4, v1, v2, v3}, Lah/e;->a(Lah/f;II)V

    :cond_36
    invoke-virtual {p0, v0}, LaY/aV;->a(Lah/f;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/google/googlenav/ui/C;Lcom/google/googlenav/D;)V
    .registers 9

    invoke-interface {p2}, Lcom/google/googlenav/D;->a()LaJ/B;

    move-result-object v0

    if-eqz v0, :cond_2e

    iget-object v1, p0, LaY/aV;->c:LaJ/p;

    iget-object v2, p0, LaY/aV;->e:Landroid/graphics/Point;

    invoke-virtual {v1, v0, v2}, LaJ/p;->a(LaJ/B;Landroid/graphics/Point;)V

    iget-object v0, p0, LaY/aV;->a:Lcom/google/googlenav/ui/bw;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bw;->H()Lah/g;

    move-result-object v0

    sget-char v1, Lcom/google/googlenav/ui/bw;->l:C

    invoke-virtual {p1}, Lcom/google/googlenav/ui/C;->b()Lah/e;

    move-result-object v2

    iget-object v3, p0, LaY/aV;->e:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    invoke-interface {v0, v1}, Lah/g;->c(C)I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, LaY/aV;->e:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-interface {v0, v1}, Lah/g;->b(C)I

    move-result v5

    sub-int/2addr v4, v5

    invoke-interface {v0, v1, v2, v3, v4}, Lah/g;->a(CLah/e;II)Z

    :cond_2e
    return-void
.end method

.method public aN()Lah/f;
    .registers 2

    iget-object v0, p0, LaY/aV;->n:Lah/f;

    if-nez v0, :cond_9

    invoke-super {p0}, LaY/t;->aN()Lah/f;

    move-result-object v0

    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, LaY/aV;->n:Lah/f;

    goto :goto_8
.end method

.method public b(Lcom/google/googlenav/D;)I
    .registers 4

    iget-object v0, p0, LaY/aV;->a:Lcom/google/googlenav/ui/bw;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bw;->H()Lah/g;

    move-result-object v0

    sget-char v1, Lcom/google/googlenav/ui/bw;->k:C

    invoke-interface {v0, v1}, Lah/g;->c(C)I

    move-result v0

    neg-int v0, v0

    mul-int/lit8 v0, v0, 0xb

    div-int/lit8 v0, v0, 0x10

    return v0
.end method

.method public c(Lcom/google/googlenav/D;)I
    .registers 4

    iget-object v0, p0, LaY/aV;->a:Lcom/google/googlenav/ui/bw;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bw;->H()Lah/g;

    move-result-object v0

    sget-char v1, Lcom/google/googlenav/ui/bw;->k:C

    invoke-interface {v0, v1}, Lah/g;->b(C)I

    move-result v0

    neg-int v0, v0

    return v0
.end method

.method protected d(Lcom/google/googlenav/D;)I
    .registers 3

    const/4 v0, 0x2

    return v0
.end method

.method protected e(Lcom/google/googlenav/D;)I
    .registers 4

    iget-object v0, p0, LaY/aV;->a:Lcom/google/googlenav/ui/bw;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bw;->H()Lah/g;

    move-result-object v0

    sget-char v1, Lcom/google/googlenav/ui/bw;->k:C

    invoke-interface {v0, v1}, Lah/g;->c(C)I

    move-result v0

    return v0
.end method

.method protected e(Lcom/google/googlenav/ui/C;)V
    .registers 3

    iget-object v0, p0, LaY/aV;->f:Lcom/google/googlenav/E;

    invoke-virtual {p0, p1, v0}, LaY/aV;->a(Lcom/google/googlenav/ui/C;Lcom/google/googlenav/E;)V

    return-void
.end method

.method protected f(Lcom/google/googlenav/D;)I
    .registers 4

    iget-object v0, p0, LaY/aV;->a:Lcom/google/googlenav/ui/bw;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bw;->H()Lah/g;

    move-result-object v0

    sget-char v1, Lcom/google/googlenav/ui/bw;->k:C

    invoke-interface {v0, v1}, Lah/g;->b(C)I

    move-result v0

    return v0
.end method

.method protected f()Lba/a;
    .registers 2

    new-instance v0, Lba/k;

    invoke-direct {v0, p0}, Lba/k;-><init>(LaY/i;)V

    return-object v0
.end method
