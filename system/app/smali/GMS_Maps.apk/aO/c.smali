.class public LaO/c;
.super LaO/a;
.source "SourceFile"


# direct methods
.method public constructor <init>(LaM/i;)V
    .registers 2
    .parameter

    .prologue
    .line 18
    invoke-direct {p0, p1}, LaO/a;-><init>(LaM/i;)V

    .line 19
    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/E;)I
    .registers 4
    .parameter

    .prologue
    .line 44
    check-cast p1, Lcom/google/googlenav/W;

    .line 45
    invoke-virtual {p1}, Lcom/google/googlenav/W;->l()I

    move-result v1

    .line 46
    const/4 v0, -0x1

    if-ne v1, v0, :cond_e

    invoke-virtual {p1}, Lcom/google/googlenav/W;->o()I

    move-result v0

    :goto_d
    return v0

    :cond_e
    iget-object v0, p0, LaO/c;->a:LaM/i;

    check-cast v0, LaM/y;

    invoke-virtual {v0}, LaM/y;->b()Lcom/google/googlenav/layer/m;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/layer/m;->a(I)Lcom/google/googlenav/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/e;->e()I

    move-result v0

    goto :goto_d
.end method

.method public b(Lcom/google/googlenav/E;)I
    .registers 4
    .parameter

    .prologue
    .line 57
    check-cast p1, Lcom/google/googlenav/W;

    .line 58
    invoke-virtual {p1}, Lcom/google/googlenav/W;->l()I

    move-result v1

    .line 59
    const/4 v0, -0x1

    if-ne v1, v0, :cond_e

    invoke-virtual {p1}, Lcom/google/googlenav/W;->p()I

    move-result v0

    :goto_d
    return v0

    :cond_e
    iget-object v0, p0, LaO/c;->a:LaM/i;

    check-cast v0, LaM/y;

    invoke-virtual {v0}, LaM/y;->b()Lcom/google/googlenav/layer/m;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/layer/m;->a(I)Lcom/google/googlenav/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/e;->f()I

    move-result v0

    goto :goto_d
.end method

.method public b(I)Lcom/google/googlenav/e;
    .registers 4
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, LaO/c;->a:LaM/i;

    invoke-virtual {v0}, LaM/i;->ar()Lcom/google/googlenav/F;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/googlenav/F;->b(I)Lcom/google/googlenav/E;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/W;

    .line 27
    if-eqz v0, :cond_31

    .line 28
    iget-object v1, p0, LaO/c;->a:LaM/i;

    invoke-virtual {v1}, LaM/i;->ax()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-virtual {v0}, Lcom/google/googlenav/W;->l()I

    move-result v0

    move v1, v0

    .line 31
    :goto_1b
    const/4 v0, -0x1

    if-eq v1, v0, :cond_31

    .line 32
    iget-object v0, p0, LaO/c;->a:LaM/i;

    check-cast v0, LaM/y;

    invoke-virtual {v0}, LaM/y;->b()Lcom/google/googlenav/layer/m;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/layer/m;->a(I)Lcom/google/googlenav/e;

    move-result-object v0

    .line 35
    :goto_2a
    return-object v0

    .line 28
    :cond_2b
    invoke-virtual {v0}, Lcom/google/googlenav/W;->m()I

    move-result v0

    move v1, v0

    goto :goto_1b

    .line 35
    :cond_31
    const/4 v0, 0x0

    goto :goto_2a
.end method
