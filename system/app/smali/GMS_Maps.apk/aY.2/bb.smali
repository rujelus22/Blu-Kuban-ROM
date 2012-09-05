.class public abstract LaY/bb;
.super LaY/m;


# instance fields
.field protected C:I

.field protected D:I


# direct methods
.method protected constructor <init>(Lcom/google/googlenav/ui/D;LaJ/p;LaJ/u;Lcom/google/googlenav/ui/af;Lcom/google/googlenav/E;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, LaY/m;-><init>(Lcom/google/googlenav/ui/D;LaJ/p;LaJ/u;Lcom/google/googlenav/ui/af;Lcom/google/googlenav/E;)V

    return-void
.end method

.method private a()V
    .registers 3

    invoke-virtual {p0}, LaY/bb;->s()Lcom/google/googlenav/D;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ah;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->a()LaJ/B;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v1, p0, LaY/bb;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/D;->T()V

    iget-object v1, p0, LaY/bb;->d:LaJ/u;

    invoke-virtual {v1, v0}, LaJ/u;->c(LaJ/B;)V

    :cond_18
    return-void
.end method

.method private a(IZ)V
    .registers 5

    invoke-virtual {p0, p1}, LaY/bb;->b(I)V

    iget-object v0, p0, LaY/bb;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->ar()LaY/Y;

    move-result-object v0

    invoke-virtual {v0, p0}, LaY/Y;->c(LaY/i;)V

    invoke-direct {p0}, LaY/bb;->a()V

    if-eqz p2, :cond_18

    const/16 v0, 0x20

    :goto_13
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, LaY/bb;->a(ILjava/lang/Object;)V

    return-void

    :cond_18
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private i(Z)V
    .registers 5

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ak()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0, p1}, LaY/bb;->b(Z)V

    :goto_d
    return-void

    :cond_e
    iget-object v0, p0, LaY/bb;->d:LaJ/u;

    iget-object v1, p0, LaY/bb;->f:Lcom/google/googlenav/E;

    invoke-interface {v1}, Lcom/google/googlenav/E;->e()Lcom/google/googlenav/D;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/googlenav/D;->a()LaJ/B;

    move-result-object v1

    iget-object v2, p0, LaY/bb;->d:LaJ/u;

    invoke-virtual {v2}, LaJ/u;->d()LaJ/Y;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, LaY/bb;->a(LaJ/B;LaJ/Y;)LaJ/B;

    move-result-object v1

    invoke-virtual {v0, v1}, LaJ/u;->c(LaJ/B;)V

    goto :goto_d
.end method


# virtual methods
.method protected O()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method protected P()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public a(IILjava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_16

    invoke-super {p0, p1, p2, p3}, LaY/m;->a(IILjava/lang/Object;)Z

    move-result v0

    :goto_8
    return v0

    :sswitch_9
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, LaY/bb;->a(Ljava/lang/Object;)V

    goto :goto_8

    :sswitch_e
    invoke-virtual {p0, p2, p3}, LaY/bb;->e(ILjava/lang/Object;)V

    goto :goto_8

    :sswitch_12
    invoke-virtual {p0}, LaY/bb;->W()V

    goto :goto_8

    :sswitch_data_16
    .sparse-switch
        0x1 -> :sswitch_9
        0x3f9 -> :sswitch_12
        0xfa1 -> :sswitch_e
    .end sparse-switch
.end method

.method protected aV()Z
    .registers 3

    iget-object v0, p0, LaY/bb;->f:Lcom/google/googlenav/E;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/google/googlenav/E;->a(B)V

    invoke-super {p0}, LaY/m;->aV()Z

    move-result v0

    return v0
.end method

.method public aa()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public b(Lcom/google/googlenav/D;)I
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public c(Lcom/google/googlenav/D;)I
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method protected c()V
    .registers 9

    const/16 v7, 0x1f4

    iget-object v0, p0, LaY/bb;->f:Lcom/google/googlenav/E;

    invoke-interface {v0}, Lcom/google/googlenav/E;->f()I

    move-result v0

    if-lez v0, :cond_69

    iget-object v0, p0, LaY/bb;->f:Lcom/google/googlenav/E;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/googlenav/E;->b(I)Lcom/google/googlenav/D;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/D;->a()LaJ/B;

    move-result-object v0

    invoke-virtual {v0}, LaJ/B;->c()I

    move-result v2

    invoke-virtual {v0}, LaJ/B;->e()I

    move-result v1

    const/4 v0, 0x1

    move v3, v2

    move v4, v2

    move v2, v1

    :goto_21
    iget-object v5, p0, LaY/bb;->f:Lcom/google/googlenav/E;

    invoke-interface {v5}, Lcom/google/googlenav/E;->f()I

    move-result v5

    if-ge v0, v5, :cond_58

    iget-object v5, p0, LaY/bb;->f:Lcom/google/googlenav/E;

    invoke-interface {v5, v0}, Lcom/google/googlenav/E;->b(I)Lcom/google/googlenav/D;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/googlenav/D;->a()LaJ/B;

    move-result-object v5

    if-eqz v5, :cond_55

    invoke-virtual {v5}, LaJ/B;->c()I

    move-result v6

    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v5}, LaJ/B;->c()I

    move-result v6

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v5}, LaJ/B;->e()I

    move-result v6

    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v5}, LaJ/B;->e()I

    move-result v5

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_55
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    :cond_58
    sub-int v0, v3, v4

    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, LaY/bb;->C:I

    sub-int v0, v1, v2

    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, LaY/bb;->D:I

    :goto_68
    return-void

    :cond_69
    iput v7, p0, LaY/bb;->C:I

    iput v7, p0, LaY/bb;->D:I

    goto :goto_68
.end method

.method protected e(ILjava/lang/Object;)V
    .registers 4

    invoke-virtual {p0}, LaY/bb;->as()Lcom/google/googlenav/E;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/E;->f()I

    move-result v0

    if-ge p1, v0, :cond_c

    if-gez p1, :cond_d

    :cond_c
    :goto_c
    return-void

    :cond_d
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, LaY/bb;->a(IZ)V

    invoke-virtual {p0, p1}, LaY/bb;->b(I)V

    goto :goto_c
.end method

.method public e(Laq/b;)Z
    .registers 8

    const/16 v5, 0x36

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, LaY/bb;->ae()Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    :goto_a
    return v1

    :cond_b
    invoke-virtual {p1}, Laq/b;->b()I

    move-result v3

    if-eq v3, v5, :cond_15

    const/16 v0, 0x34

    if-ne v3, v0, :cond_a

    :cond_15
    iget-object v0, p0, LaY/bb;->f:Lcom/google/googlenav/E;

    invoke-interface {v0}, Lcom/google/googlenav/E;->c()I

    move-result v0

    invoke-virtual {p0}, LaY/bb;->ac()Z

    move-result v4

    if-eqz v4, :cond_31

    if-ne v3, v5, :cond_44

    add-int/lit8 v0, v0, 0x1

    iget-object v3, p0, LaY/bb;->f:Lcom/google/googlenav/E;

    invoke-interface {v3}, Lcom/google/googlenav/E;->f()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_31
    :goto_31
    if-gez v0, :cond_34

    move v0, v1

    :cond_34
    iget-object v1, p0, LaY/bb;->f:Lcom/google/googlenav/E;

    invoke-interface {v1, v2}, Lcom/google/googlenav/E;->a(B)V

    invoke-virtual {p0, v0}, LaY/bb;->b(I)V

    invoke-virtual {p0}, LaY/bb;->ao()Z

    invoke-direct {p0, v2}, LaY/bb;->i(Z)V

    move v1, v2

    goto :goto_a

    :cond_44
    add-int/lit8 v0, v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_31
.end method

.method protected f(Laq/b;)Z
    .registers 4

    invoke-virtual {p1}, Laq/b;->a()I

    move-result v0

    const/16 v1, 0x23

    if-ne v0, v1, :cond_15

    invoke-virtual {p1}, Laq/b;->c()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_15

    invoke-virtual {p0}, LaY/bb;->k()V

    const/4 v0, 0x1

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public o()V
    .registers 2

    iget-object v0, p0, LaY/bb;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->av()Lcom/google/googlenav/ui/wizard/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/x;->d()Lcom/google/googlenav/ui/wizard/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/y;->a()I

    move-result v0

    packed-switch v0, :pswitch_data_1a

    invoke-virtual {p0}, LaY/bb;->m()V

    :goto_14
    return-void

    :pswitch_15
    invoke-virtual {p0}, LaY/bb;->k()V

    goto :goto_14

    nop

    :pswitch_data_1a
    .packed-switch 0x20
        :pswitch_15
    .end packed-switch
.end method
