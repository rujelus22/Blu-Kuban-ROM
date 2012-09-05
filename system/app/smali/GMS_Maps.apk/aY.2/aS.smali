.class public LaY/aS;
.super LaY/t;


# instance fields
.field private D:Z


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/D;LaJ/p;LaJ/u;Lcom/google/googlenav/ui/af;)V
    .registers 12

    new-instance v5, Lcom/google/googlenav/layer/m;

    const-string v0, "s"

    invoke-direct {v5, v0}, Lcom/google/googlenav/layer/m;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, LaJ/p;->a()LaJ/D;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, LaY/t;-><init>(Lcom/google/googlenav/ui/D;LaJ/p;LaJ/u;Lcom/google/googlenav/ui/af;Lcom/google/googlenav/layer/m;LaJ/o;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, LaY/aS;->D:Z

    invoke-virtual {p1}, Lcom/google/googlenav/ui/D;->k()Lay/p;

    move-result-object v0

    invoke-virtual {v0}, Lay/p;->a()Lay/a;

    return-void
.end method


# virtual methods
.method protected X()Z
    .registers 4

    const/4 v2, 0x0

    invoke-super {p0}, LaY/t;->X()Z

    iget-boolean v0, p0, LaY/aS;->D:Z

    if-eqz v0, :cond_2e

    iget-object v0, p0, LaY/aS;->d:LaJ/u;

    invoke-virtual {v0}, LaJ/u;->c()LaJ/B;

    move-result-object v0

    invoke-virtual {p0, v0}, LaY/aS;->b(LaJ/B;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2c

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, LaY/aS;->b(B)V

    invoke-virtual {p0}, LaY/aS;->as()Lcom/google/googlenav/E;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/googlenav/E;->a(I)V

    iget-object v0, p0, LaY/aS;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->ar()LaY/Y;

    move-result-object v0

    invoke-virtual {v0, p0}, LaY/Y;->c(LaY/i;)V

    invoke-virtual {p0}, LaY/aS;->ao()Z

    :cond_2c
    iput-boolean v2, p0, LaY/aS;->D:Z

    :cond_2e
    return v2
.end method

.method public Y()V
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, LaY/aS;->e(Z)V

    return-void
.end method

.method public aD()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public aO()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public aV()Z
    .registers 2

    invoke-static {p0}, Laf/l;->a(Laf/j;)V

    iget-object v0, p0, LaY/aS;->c:LaJ/p;

    invoke-virtual {v0, p0}, LaJ/p;->a(LaJ/m;)V

    const/4 v0, 0x1

    return v0
.end method

.method public aW()V
    .registers 3

    invoke-static {p0}, Laf/l;->c(Laf/j;)V

    invoke-virtual {p0}, LaY/aS;->i()Lcom/google/googlenav/Q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/Q;->g()V

    iget-object v0, p0, LaY/aS;->c:LaJ/p;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LaJ/p;->a(LaJ/m;)V

    return-void
.end method

.method public ax()I
    .registers 2

    const/16 v0, 0x10

    return v0
.end method

.method public g(I)Z
    .registers 3

    packed-switch p1, :pswitch_data_a

    invoke-super {p0, p1}, LaY/t;->g(I)Z

    move-result v0

    :goto_7
    return v0

    :pswitch_8
    const/4 v0, 0x0

    goto :goto_7

    :pswitch_data_a
    .packed-switch 0x1
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method

.method protected j()V
    .registers 1

    return-void
.end method
