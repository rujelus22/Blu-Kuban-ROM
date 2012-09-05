.class public Lcom/google/googlenav/ui/bu;
.super Lcom/google/googlenav/ui/bl;

# interfaces
.implements Lcom/google/googlenav/bQ;


# instance fields
.field public final a:Lcom/google/googlenav/bN;

.field public final b:LaY/m;


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/bu;->b:LaY/m;

    invoke-virtual {v0}, LaY/m;->br()V

    return-void
.end method

.method public o()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/bu;->b:LaY/m;

    invoke-virtual {v0}, LaY/m;->bd()Z

    move-result v0

    if-eqz v0, :cond_13

    sget-object v0, Lcom/google/googlenav/z;->c:Lcom/google/googlenav/z;

    new-instance v1, Lcom/google/googlenav/ui/bv;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/bv;-><init>(Lcom/google/googlenav/ui/bu;)V

    invoke-static {v0, v1}, Lcom/google/googlenav/u;->a(Lcom/google/googlenav/z;Lcom/google/googlenav/x;)V

    :goto_12
    return-void

    :cond_13
    iget-object v0, p0, Lcom/google/googlenav/ui/bu;->a:Lcom/google/googlenav/bN;

    invoke-virtual {v0}, Lcom/google/googlenav/bN;->e()V

    goto :goto_12
.end method
