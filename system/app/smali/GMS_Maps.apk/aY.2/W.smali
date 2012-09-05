.class public LaY/W;
.super LaY/m;


# instance fields
.field private final C:Lcom/google/googlenav/layer/s;

.field private final D:Z

.field private final E:Z


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/D;LaJ/p;LaJ/u;Lcom/google/googlenav/ui/af;LaJ/k;Lcom/google/googlenav/ah;ZBZ)V
    .registers 12

    invoke-direct {p0, p1, p2, p3, p4}, LaY/m;-><init>(Lcom/google/googlenav/ui/D;LaJ/p;LaJ/u;Lcom/google/googlenav/ui/af;)V

    invoke-virtual {p6}, Lcom/google/googlenav/ah;->h()Z

    move-result v0

    if-eqz v0, :cond_3b

    check-cast p6, Lcom/google/googlenav/T;

    new-instance v0, Lcom/google/googlenav/layer/m;

    invoke-virtual {p6}, Lcom/google/googlenav/T;->i()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/googlenav/layer/m;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/google/googlenav/layer/s;

    invoke-direct {v1, p0, v0}, Lcom/google/googlenav/layer/s;-><init>(LaY/i;Lcom/google/googlenav/layer/m;)V

    iput-object v1, p0, LaY/W;->C:Lcom/google/googlenav/layer/s;

    new-instance v1, Lcom/google/googlenav/Q;

    invoke-direct {v1, v0, p5, p2, p3}, Lcom/google/googlenav/Q;-><init>(Lcom/google/googlenav/layer/m;LaJ/o;LaJ/p;LaJ/u;)V

    invoke-virtual {v1, p6}, Lcom/google/googlenav/Q;->a(Lcom/google/googlenav/T;)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/google/googlenav/Q;->a(I)V

    iput-object v1, p0, LaY/W;->f:Lcom/google/googlenav/E;

    :goto_29
    iput-boolean p7, p0, LaY/W;->D:Z

    iput-boolean p9, p0, LaY/W;->E:Z

    invoke-virtual {p0, p8}, LaY/W;->b(B)V

    invoke-virtual {p0}, LaY/W;->af()Z

    move-result v0

    if-eqz v0, :cond_3a

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, LaY/W;->e(Z)V

    :cond_3a
    return-void

    :cond_3b
    const/4 v0, 0x0

    iput-object v0, p0, LaY/W;->C:Lcom/google/googlenav/layer/s;

    new-instance v0, Lcom/google/googlenav/bk;

    invoke-direct {v0, p6}, Lcom/google/googlenav/bk;-><init>(Lcom/google/googlenav/ah;)V

    iput-object v0, p0, LaY/W;->f:Lcom/google/googlenav/E;

    goto :goto_29
.end method


# virtual methods
.method protected O()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected P()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public Z()V
    .registers 2

    invoke-super {p0}, LaY/m;->Z()V

    iget-object v0, p0, LaY/W;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0, p0}, Lcom/google/googlenav/ui/D;->a(LaY/i;)V

    return-void
.end method

.method protected a(Lcom/google/googlenav/E;)V
    .registers 2

    iput-object p1, p0, LaY/W;->f:Lcom/google/googlenav/E;

    return-void
.end method

.method public a()Z
    .registers 2

    iget-boolean v0, p0, LaY/W;->D:Z

    return v0
.end method

.method public aE()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public aG()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public aO()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public aY()V
    .registers 4

    const/4 v1, 0x4

    iget-object v0, p0, LaY/W;->f:Lcom/google/googlenav/E;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/google/googlenav/E;->b(I)Lcom/google/googlenav/D;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ah;

    invoke-virtual {p0, v1, v0}, LaY/W;->a(ILcom/google/googlenav/ah;)V

    invoke-super {p0}, LaY/m;->aY()V

    iget-boolean v0, p0, LaY/W;->D:Z

    if-eqz v0, :cond_2f

    invoke-virtual {p0}, LaY/W;->aj()Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, LaY/W;->d:LaJ/u;

    invoke-virtual {v0}, LaJ/u;->c()LaJ/B;

    move-result-object v0

    iget-object v1, p0, LaY/W;->d:LaJ/u;

    invoke-virtual {v1}, LaJ/u;->d()LaJ/Y;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, LaY/W;->a(LaJ/B;LaJ/Y;)LaJ/B;

    move-result-object v0

    iget-object v1, p0, LaY/W;->d:LaJ/u;

    invoke-virtual {v1, v0}, LaJ/u;->b(LaJ/B;)V

    :cond_2f
    return-void
.end method

.method protected an()V
    .registers 5

    invoke-virtual {p0}, LaY/W;->as()Lcom/google/googlenav/E;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/E;->e()Lcom/google/googlenav/D;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ah;

    if-eqz v0, :cond_25

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->h()Z

    move-result v1

    if-eqz v1, :cond_25

    move-object v1, v0

    check-cast v1, Lcom/google/googlenav/T;

    const/16 v2, 0x43

    const-string v3, "o"

    invoke-virtual {v1}, Lcom/google/googlenav/T;->v()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    iget-object v1, p0, LaY/W;->C:Lcom/google/googlenav/layer/s;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/layer/s;->b(Lcom/google/googlenav/ah;)Lat/g;

    :cond_25
    return-void
.end method

.method public ap()Z
    .registers 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, LaY/W;->bv()Lcom/google/googlenav/ah;

    move-result-object v2

    if-nez v2, :cond_9

    :cond_8
    :goto_8
    return v0

    :cond_9
    invoke-virtual {v2}, Lcom/google/googlenav/ah;->av()Lcom/google/googlenav/bN;

    move-result-object v3

    if-eqz v3, :cond_11

    move v0, v1

    goto :goto_8

    :cond_11
    sget-object v3, LaB/b;->a:LaB/b;

    invoke-virtual {v3}, LaB/b;->e()Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, LaY/W;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v3}, Lcom/google/googlenav/ui/D;->af()Lcom/google/googlenav/ay;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/googlenav/ay;->e()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v2}, Lcom/google/googlenav/ah;->H()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Las/b;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    move v0, v1

    goto :goto_8
.end method

.method protected ar()V
    .registers 1

    return-void
.end method

.method public av()Z
    .registers 2

    iget-boolean v0, p0, LaY/W;->D:Z

    if-eqz v0, :cond_c

    invoke-super {p0}, LaY/m;->av()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public ax()I
    .registers 2

    const/16 v0, 0xf

    return v0
.end method

.method public b(Lcom/google/googlenav/D;)I
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public b()Lcom/google/googlenav/Q;
    .registers 2

    iget-object v0, p0, LaY/W;->f:Lcom/google/googlenav/E;

    check-cast v0, Lcom/google/googlenav/Q;

    return-object v0
.end method

.method public c(Lcom/google/googlenav/D;)I
    .registers 4

    iget-boolean v0, p0, LaY/W;->D:Z

    if-eqz v0, :cond_1d

    move-object v0, p1

    check-cast v0, Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->bh()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->bi()Lcom/google/googlenav/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/e;->f()I

    move-result v0

    :goto_15
    rsub-int/lit8 v0, v0, 0x1

    :goto_17
    return v0

    :cond_18
    invoke-virtual {p0, p1}, LaY/W;->f(Lcom/google/googlenav/D;)I

    move-result v0

    goto :goto_15

    :cond_1d
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public d(Lcom/google/googlenav/ui/C;)V
    .registers 2

    return-void
.end method

.method protected e(Lcom/google/googlenav/ui/C;)V
    .registers 2

    return-void
.end method

.method protected f()Lba/a;
    .registers 2

    new-instance v0, Lba/g;

    invoke-direct {v0, p0}, Lba/g;-><init>(LaY/i;)V

    return-object v0
.end method

.method protected f(Laq/b;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method protected g(Lcom/google/googlenav/ah;)Z
    .registers 3

    iget-object v0, p0, LaY/W;->C:Lcom/google/googlenav/layer/s;

    if-eqz v0, :cond_e

    iget-object v0, p0, LaY/W;->C:Lcom/google/googlenav/layer/s;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/layer/s;->a(Lcom/google/googlenav/ah;)Lat/g;

    move-result-object v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method protected k()V
    .registers 1

    return-void
.end method

.method public o()V
    .registers 2

    invoke-virtual {p0}, LaY/W;->bA()Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_6
    return-void

    :cond_7
    iget-object v0, p0, LaY/W;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->av()Lcom/google/googlenav/ui/wizard/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/x;->b()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, LaY/W;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0, p0}, Lcom/google/googlenav/ui/D;->a(LaY/i;)V

    iget-object v0, p0, LaY/W;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->aj()V

    goto :goto_6

    :cond_1e
    iget-boolean v0, p0, LaY/W;->E:Z

    if-eqz v0, :cond_2d

    iget-object v0, p0, LaY/W;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0, p0}, Lcom/google/googlenav/ui/D;->a(LaY/i;)V

    iget-object v0, p0, LaY/W;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->Z()V

    goto :goto_6

    :cond_2d
    invoke-virtual {p0}, LaY/W;->m()V

    goto :goto_6
.end method
