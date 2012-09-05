.class public Lba/c;
.super Lba/a;


# direct methods
.method public constructor <init>(LaY/i;)V
    .registers 2

    invoke-direct {p0, p1}, Lba/a;-><init>(LaY/i;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/D;)I
    .registers 4

    check-cast p1, Lcom/google/googlenav/T;

    invoke-virtual {p1}, Lcom/google/googlenav/T;->l()I

    move-result v1

    const/4 v0, -0x1

    if-ne v1, v0, :cond_e

    invoke-virtual {p1}, Lcom/google/googlenav/T;->o()I

    move-result v0

    :goto_d
    return v0

    :cond_e
    iget-object v0, p0, Lba/c;->a:LaY/i;

    check-cast v0, LaY/t;

    invoke-virtual {v0}, LaY/t;->b()Lcom/google/googlenav/layer/m;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/layer/m;->a(I)Lcom/google/googlenav/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/e;->e()I

    move-result v0

    goto :goto_d
.end method

.method public b(Lcom/google/googlenav/D;)I
    .registers 4

    check-cast p1, Lcom/google/googlenav/T;

    invoke-virtual {p1}, Lcom/google/googlenav/T;->l()I

    move-result v1

    const/4 v0, -0x1

    if-ne v1, v0, :cond_e

    invoke-virtual {p1}, Lcom/google/googlenav/T;->p()I

    move-result v0

    :goto_d
    return v0

    :cond_e
    iget-object v0, p0, Lba/c;->a:LaY/i;

    check-cast v0, LaY/t;

    invoke-virtual {v0}, LaY/t;->b()Lcom/google/googlenav/layer/m;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/layer/m;->a(I)Lcom/google/googlenav/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/e;->f()I

    move-result v0

    goto :goto_d
.end method

.method public b(I)Lcom/google/googlenav/e;
    .registers 4

    iget-object v0, p0, Lba/c;->a:LaY/i;

    invoke-virtual {v0}, LaY/i;->as()Lcom/google/googlenav/E;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/googlenav/E;->b(I)Lcom/google/googlenav/D;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/T;

    if-eqz v0, :cond_31

    iget-object v1, p0, Lba/c;->a:LaY/i;

    invoke-virtual {v1}, LaY/i;->az()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-virtual {v0}, Lcom/google/googlenav/T;->l()I

    move-result v0

    move v1, v0

    :goto_1b
    const/4 v0, -0x1

    if-eq v1, v0, :cond_31

    iget-object v0, p0, Lba/c;->a:LaY/i;

    check-cast v0, LaY/t;

    invoke-virtual {v0}, LaY/t;->b()Lcom/google/googlenav/layer/m;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/layer/m;->a(I)Lcom/google/googlenav/e;

    move-result-object v0

    :goto_2a
    return-object v0

    :cond_2b
    invoke-virtual {v0}, Lcom/google/googlenav/T;->m()I

    move-result v0

    move v1, v0

    goto :goto_1b

    :cond_31
    const/4 v0, 0x0

    goto :goto_2a
.end method
