.class public LaY/bd;
.super LaY/bb;


# direct methods
.method protected constructor <init>(Lcom/google/googlenav/ui/D;LaJ/p;LaJ/u;Lcom/google/googlenav/ui/af;Lcom/google/googlenav/E;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, LaY/bb;-><init>(Lcom/google/googlenav/ui/D;LaJ/p;LaJ/u;Lcom/google/googlenav/ui/af;Lcom/google/googlenav/E;)V

    return-void
.end method

.method static synthetic a(LaY/bd;)V
    .registers 1

    invoke-direct {p0}, LaY/bd;->e()V

    return-void
.end method

.method private a(Lcom/google/googlenav/Y;Ljava/lang/Runnable;)V
    .registers 5

    new-instance v0, LI/h;

    invoke-direct {v0}, LI/h;-><init>()V

    new-instance v1, LaY/bf;

    invoke-direct {v1, p0, v0, p2}, LaY/bf;-><init>(LaY/bd;LI/h;Ljava/lang/Runnable;)V

    invoke-virtual {p1, v1}, Lcom/google/googlenav/Y;->a(Lcom/google/googlenav/bQ;)V

    return-void
.end method

.method private b()V
    .registers 3

    invoke-virtual {p0}, LaY/bd;->m()V

    iget-object v0, p0, LaY/bd;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->av()Lcom/google/googlenav/ui/wizard/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/x;->d()Lcom/google/googlenav/ui/wizard/y;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, LaY/bd;->a(Ljava/lang/Object;)V

    iget-object v1, p0, LaY/bd;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/D;->av()Lcom/google/googlenav/ui/wizard/x;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/wizard/x;->a(Lcom/google/googlenav/ui/wizard/y;)V

    return-void
.end method

.method private e()V
    .registers 1

    invoke-super {p0}, LaY/bb;->l()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    invoke-virtual {p0}, LaY/bd;->R()V

    iget-object v0, p0, LaY/bd;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->ar()LaY/Y;

    move-result-object v0

    invoke-virtual {v0, p0}, LaY/Y;->l(LaY/i;)V

    return-void
.end method

.method protected a(Lcom/google/googlenav/E;)V
    .registers 3

    iput-object p1, p0, LaY/bd;->f:Lcom/google/googlenav/E;

    check-cast p1, Lcom/google/googlenav/bJ;

    invoke-virtual {p1}, Lcom/google/googlenav/bJ;->a()I

    move-result v0

    if-gez v0, :cond_b

    const/4 v0, 0x0

    :cond_b
    invoke-virtual {p0, v0}, LaY/bd;->b(I)V

    return-void
.end method

.method public a(IILjava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_1c

    invoke-super {p0, p1, p2, p3}, LaY/bb;->a(IILjava/lang/Object;)Z

    move-result v0

    :goto_8
    return v0

    :pswitch_9
    invoke-virtual {p0, p2}, LaY/bd;->b(I)V

    iget-object v1, p0, LaY/bd;->f:Lcom/google/googlenav/E;

    invoke-interface {v1}, Lcom/google/googlenav/E;->d()B

    move-result v1

    if-ne v1, v0, :cond_18

    invoke-virtual {p0, p2, p3}, LaY/bd;->e(ILjava/lang/Object;)V

    goto :goto_8

    :cond_18
    invoke-direct {p0}, LaY/bd;->b()V

    goto :goto_8

    :pswitch_data_1c
    .packed-switch 0xfa1
        :pswitch_9
    .end packed-switch
.end method

.method protected ar()V
    .registers 2

    new-instance v0, Lcom/google/googlenav/ui/view/dialog/aM;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/view/dialog/aM;-><init>(LaY/bd;)V

    iput-object v0, p0, LaY/bd;->r:Lcom/google/googlenav/ui/view/android/bs;

    return-void
.end method

.method public ax()I
    .registers 2

    const/16 v0, 0x18

    return v0
.end method

.method public d()[Lcom/google/googlenav/ui/aR;
    .registers 12

    const v5, -0x777778

    const/4 v10, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, LaY/bd;->f:Lcom/google/googlenav/E;

    check-cast v0, Lcom/google/googlenav/bJ;

    invoke-virtual {v0}, Lcom/google/googlenav/bJ;->g()Lcom/google/googlenav/bL;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/googlenav/bJ;->i()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lcom/google/googlenav/bW;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/googlenav/bW;

    iget-object v3, p0, LaY/bd;->f:Lcom/google/googlenav/E;

    check-cast v3, Lcom/google/googlenav/bJ;

    invoke-virtual {v3}, Lcom/google/googlenav/bJ;->a()I

    move-result v8

    invoke-virtual {v0}, Lcom/google/googlenav/bJ;->j()LaY/bc;

    move-result-object v0

    invoke-virtual {v0}, LaY/bc;->b()Lcom/google/googlenav/bS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/bS;->f()I

    move-result v9

    if-gez v8, :cond_46

    new-array v7, v10, [Lcom/google/googlenav/ui/aQ;

    new-instance v0, Lcom/google/googlenav/ui/aT;

    invoke-virtual {v4}, Lcom/google/googlenav/bL;->a()I

    move-result v3

    invoke-static {v10}, Lcom/google/googlenav/ui/aT;->a(Z)I

    move-result v6

    invoke-direct/range {v0 .. v6}, Lcom/google/googlenav/ui/aT;-><init>([Lcom/google/googlenav/bW;IILcom/google/googlenav/bL;II)V

    aput-object v0, v7, v2

    move-object v0, v7

    :goto_45
    return-object v0

    :cond_46
    const/4 v0, 0x2

    new-array v7, v0, [Lcom/google/googlenav/ui/aQ;

    new-instance v0, Lcom/google/googlenav/ui/aT;

    add-int/lit8 v3, v8, 0x1

    invoke-static {v10}, Lcom/google/googlenav/ui/aT;->a(Z)I

    move-result v6

    invoke-direct/range {v0 .. v6}, Lcom/google/googlenav/ui/aT;-><init>([Lcom/google/googlenav/bW;IILcom/google/googlenav/bL;II)V

    aput-object v0, v7, v2

    new-instance v0, Lcom/google/googlenav/ui/aT;

    invoke-virtual {v4}, Lcom/google/googlenav/bL;->a()I

    move-result v3

    invoke-static {v2}, Lcom/google/googlenav/ui/aT;->a(Z)I

    move-result v6

    move v2, v8

    move v5, v9

    invoke-direct/range {v0 .. v6}, Lcom/google/googlenav/ui/aT;-><init>([Lcom/google/googlenav/bW;IILcom/google/googlenav/bL;II)V

    aput-object v0, v7, v10

    move-object v0, v7

    goto :goto_45
.end method

.method protected l()V
    .registers 3

    iget-object v0, p0, LaY/bd;->f:Lcom/google/googlenav/E;

    invoke-interface {v0}, Lcom/google/googlenav/E;->e()Lcom/google/googlenav/D;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/bW;

    invoke-virtual {v0}, Lcom/google/googlenav/bW;->av()Lcom/google/googlenav/bN;

    move-result-object v1

    instance-of v0, v1, Lcom/google/googlenav/Y;

    if-eqz v0, :cond_24

    move-object v0, v1

    check-cast v0, Lcom/google/googlenav/Y;

    invoke-virtual {v0}, Lcom/google/googlenav/Y;->b()Z

    move-result v0

    if-eqz v0, :cond_24

    new-instance v0, LaY/be;

    invoke-direct {v0, p0}, LaY/be;-><init>(LaY/bd;)V

    check-cast v1, Lcom/google/googlenav/Y;

    invoke-direct {p0, v1, v0}, LaY/bd;->a(Lcom/google/googlenav/Y;Ljava/lang/Runnable;)V

    :goto_23
    return-void

    :cond_24
    invoke-direct {p0}, LaY/bd;->e()V

    goto :goto_23
.end method

.method public o()V
    .registers 3

    iget-object v0, p0, LaY/bd;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->av()Lcom/google/googlenav/ui/wizard/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/x;->d()Lcom/google/googlenav/ui/wizard/y;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/y;->a()I

    move-result v0

    packed-switch v0, :pswitch_data_36

    invoke-virtual {p0}, LaY/bd;->m()V

    :goto_14
    return-void

    :pswitch_15
    iget-object v0, p0, LaY/bd;->f:Lcom/google/googlenav/E;

    check-cast v0, Lcom/google/googlenav/bJ;

    invoke-virtual {v0}, Lcom/google/googlenav/bJ;->b()Lcom/google/googlenav/E;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/aa;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/y;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/aa;->a(I)V

    iget-object v1, p0, LaY/bd;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/D;->a(Lcom/google/googlenav/aa;)LaY/br;

    goto :goto_14

    :pswitch_32
    invoke-virtual {p0}, LaY/bd;->k()V

    goto :goto_14

    :pswitch_data_36
    .packed-switch 0x20
        :pswitch_32
        :pswitch_15
    .end packed-switch
.end method
