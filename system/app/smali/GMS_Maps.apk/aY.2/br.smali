.class public LaY/br;
.super LaY/bb;

# interfaces
.implements Lcom/google/googlenav/ui/wizard/cV;


# instance fields
.field protected E:Z

.field private F:Lau/x;

.field private G:Landroid/view/View$OnClickListener;


# direct methods
.method protected constructor <init>(Lcom/google/googlenav/ui/D;LaJ/p;LaJ/u;Lcom/google/googlenav/ui/af;Lcom/google/googlenav/E;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, LaY/bb;-><init>(Lcom/google/googlenav/ui/D;LaJ/p;LaJ/u;Lcom/google/googlenav/ui/af;Lcom/google/googlenav/E;)V

    return-void
.end method


# virtual methods
.method public P_()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public Q_()V
    .registers 1

    return-void
.end method

.method protected a(LaY/bc;Lcom/google/googlenav/ui/wizard/y;)V
    .registers 9

    iget-object v0, p0, LaY/br;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->av()Lcom/google/googlenav/ui/wizard/x;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/googlenav/ui/wizard/x;->a(Lcom/google/googlenav/ui/wizard/y;)V

    iget-object v0, p0, LaY/br;->b:Lcom/google/googlenav/ui/D;

    iget-object v1, p0, LaY/br;->f:Lcom/google/googlenav/E;

    invoke-virtual {v0, p1, v1}, Lcom/google/googlenav/ui/D;->a(LaY/bc;Lcom/google/googlenav/E;)V

    iget-object v0, p0, LaY/br;->b:Lcom/google/googlenav/ui/D;

    const/16 v1, 0x3fe

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v3, Lcom/google/googlenav/ui/wizard/x;->a:Lcom/google/googlenav/ui/wizard/y;

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/googlenav/ui/D;->a(Ljava/lang/String;Lat/d;Lcom/google/googlenav/ui/wizard/y;J)V

    return-void
.end method

.method public a(Lau/x;)V
    .registers 2

    iput-object p1, p0, LaY/br;->F:Lau/x;

    return-void
.end method

.method public a(Lau/x;Ljava/lang/Long;Lam/b;Lcom/google/googlenav/aV;)V
    .registers 11

    invoke-virtual {p0, p1}, LaY/br;->a(Lau/x;)V

    iget-object v0, p0, LaY/br;->f:Lcom/google/googlenav/E;

    check-cast v0, Lcom/google/googlenav/aa;

    new-instance v1, Lcom/google/googlenav/aa;

    invoke-virtual {v0}, Lcom/google/googlenav/aa;->i()LaJ/B;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/googlenav/aa;-><init>(LaJ/B;)V

    iget-object v0, p0, LaY/br;->F:Lau/x;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/aa;->a(Lau/x;)V

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v0

    invoke-virtual {v0, v1}, Lat/h;->c(Lat/g;)V

    iget-object v0, p0, LaY/br;->b:Lcom/google/googlenav/ui/D;

    const/16 v1, 0x400

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v3, Lcom/google/googlenav/ui/wizard/x;->a:Lcom/google/googlenav/ui/wizard/y;

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/googlenav/ui/D;->a(Ljava/lang/String;Lat/d;Lcom/google/googlenav/ui/wizard/y;J)V

    return-void
.end method

.method protected a(Lcom/google/googlenav/E;)V
    .registers 5

    const/4 v0, 0x0

    iput-boolean v0, p0, LaY/br;->E:Z

    iput-object p1, p0, LaY/br;->f:Lcom/google/googlenav/E;

    move-object v0, p1

    check-cast v0, Lcom/google/googlenav/aa;

    invoke-virtual {v0}, Lcom/google/googlenav/aa;->k()Lau/x;

    move-result-object v1

    iput-object v1, p0, LaY/br;->F:Lau/x;

    invoke-interface {p1}, Lcom/google/googlenav/E;->f()I

    move-result v1

    if-lez v1, :cond_29

    iget-object v1, p0, LaY/br;->d:LaJ/u;

    invoke-virtual {v0}, Lcom/google/googlenav/aa;->i()LaJ/B;

    move-result-object v0

    invoke-virtual {v1, v0}, LaJ/u;->c(LaJ/B;)V

    invoke-virtual {p0}, LaY/br;->c()V

    iget-object v0, p0, LaY/br;->d:LaJ/u;

    iget v1, p0, LaY/br;->C:I

    iget v2, p0, LaY/br;->D:I

    invoke-virtual {v0, v1, v2}, LaJ/u;->d(II)V

    :cond_29
    return-void
.end method

.method public a(Lcom/google/googlenav/aa;)V
    .registers 4

    invoke-virtual {p1}, Lcom/google/googlenav/aa;->l()Z

    move-result v0

    if-eqz v0, :cond_3f

    iget-boolean v0, p0, LaY/br;->E:Z

    if-nez v0, :cond_b

    :goto_a
    return-void

    :cond_b
    invoke-virtual {p0}, LaY/br;->as()Lcom/google/googlenav/E;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/E;->d()B

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/googlenav/aa;->a(B)V

    invoke-virtual {p0, p1}, LaY/br;->b(Lcom/google/googlenav/E;)V

    invoke-interface {v0}, Lcom/google/googlenav/E;->f()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/googlenav/aa;->f()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, v0}, LaY/br;->b(I)V

    invoke-virtual {p0}, LaY/br;->ae()Z

    move-result v0

    if-eqz v0, :cond_3b

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, LaY/br;->h(Z)V

    iget-object v0, p0, LaY/br;->r:Lcom/google/googlenav/ui/view/android/bs;

    check-cast v0, Lcom/google/googlenav/ui/view/dialog/al;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/dialog/al;->h()V

    :cond_3b
    :goto_3b
    const/4 v0, 0x0

    iput-boolean v0, p0, LaY/br;->E:Z

    goto :goto_a

    :cond_3f
    invoke-virtual {p0, p1}, LaY/br;->b(Lcom/google/googlenav/E;)V

    invoke-virtual {p0}, LaY/br;->k()V

    goto :goto_3b
.end method

.method public a(IILjava/lang/Object;)Z
    .registers 8

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_60

    invoke-super {p0, p1, p2, p3}, LaY/bb;->a(IILjava/lang/Object;)Z

    move-result v0

    :goto_a
    return v0

    :sswitch_b
    iput-boolean v1, p0, LaY/br;->E:Z

    invoke-virtual {p0}, LaY/br;->e()V

    goto :goto_a

    :sswitch_11
    iput-boolean v1, p0, LaY/br;->E:Z

    iget-object v1, p0, LaY/br;->F:Lau/x;

    if-eqz v1, :cond_23

    iget-object v1, p0, LaY/br;->F:Lau/x;

    invoke-virtual {v1}, Lau/x;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Las/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_27

    :cond_23
    invoke-virtual {p0, v2, v2, v2, v2}, LaY/br;->a(Lau/x;Ljava/lang/Long;Lam/b;Lcom/google/googlenav/aV;)V

    goto :goto_a

    :cond_27
    iget-object v1, p0, LaY/br;->b:Lcom/google/googlenav/ui/D;

    new-instance v2, Lcom/google/googlenav/bc;

    invoke-direct {v2}, Lcom/google/googlenav/bc;-><init>()V

    iget-object v3, p0, LaY/br;->F:Lau/x;

    invoke-virtual {v3}, Lau/x;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/googlenav/bc;->a(Ljava/lang/String;)Lcom/google/googlenav/bc;

    move-result-object v2

    new-instance v3, LaY/bs;

    invoke-direct {v3, p0}, LaY/bs;-><init>(LaY/br;)V

    invoke-virtual {v2, v3}, Lcom/google/googlenav/bc;->a(Lcom/google/googlenav/aW;)Lcom/google/googlenav/bc;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/bc;->a()Lcom/google/googlenav/bb;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/D;->a(Lcom/google/googlenav/bb;)V

    goto :goto_a

    :sswitch_49
    iput-boolean v1, p0, LaY/br;->E:Z

    const/16 v1, 0x21

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, LaY/br;->d(ILjava/lang/Object;)Lcom/google/googlenav/ui/wizard/y;

    move-result-object v1

    check-cast p3, LaY/bc;

    invoke-virtual {p0, p3, v1}, LaY/br;->a(LaY/bc;Lcom/google/googlenav/ui/wizard/y;)V

    goto :goto_a

    :sswitch_5b
    invoke-virtual {p0}, LaY/br;->bI()V

    goto :goto_a

    nop

    :sswitch_data_60
    .sparse-switch
        0xd5 -> :sswitch_b
        0xd6 -> :sswitch_11
        0xfa3 -> :sswitch_5b
        0xfa4 -> :sswitch_49
    .end sparse-switch
.end method

.method protected ar()V
    .registers 2

    new-instance v0, Lcom/google/googlenav/ui/view/dialog/al;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/view/dialog/al;-><init>(LaY/br;)V

    iput-object v0, p0, LaY/br;->r:Lcom/google/googlenav/ui/view/android/bs;

    return-void
.end method

.method public ax()I
    .registers 2

    const/16 v0, 0x17

    return v0
.end method

.method public bH()Z
    .registers 2

    iget-object v0, p0, LaY/br;->f:Lcom/google/googlenav/E;

    check-cast v0, Lcom/google/googlenav/aa;

    invoke-virtual {v0}, Lcom/google/googlenav/aa;->m()Z

    move-result v0

    return v0
.end method

.method protected bI()V
    .registers 3

    iget-boolean v0, p0, LaY/br;->E:Z

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, LaY/br;->E:Z

    new-instance v1, Lcom/google/googlenav/aa;

    iget-object v0, p0, LaY/br;->f:Lcom/google/googlenav/E;

    check-cast v0, Lcom/google/googlenav/aa;

    invoke-direct {v1, v0}, Lcom/google/googlenav/aa;-><init>(Lcom/google/googlenav/aa;)V

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v0

    invoke-virtual {v0, v1}, Lat/h;->c(Lat/g;)V

    goto :goto_4
.end method

.method public e()V
    .registers 9

    const/4 v7, 0x0

    const/16 v0, 0xba

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/google/googlenav/ui/wizard/cA;->f()I

    move-result v1

    xor-int/lit8 v1, v1, 0x4

    xor-int/lit8 v1, v1, 0x8

    const/16 v2, 0x102

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    const/16 v4, 0x4de

    invoke-static {v4}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, LaY/br;->bG()Lcom/google/googlenav/ui/wizard/hM;

    move-result-object v5

    new-instance v6, Lcom/google/googlenav/ui/wizard/cZ;

    invoke-direct {v6}, Lcom/google/googlenav/ui/wizard/cZ;-><init>()V

    invoke-virtual {v6, v0}, Lcom/google/googlenav/ui/wizard/cZ;->a(Ljava/lang/String;)Lcom/google/googlenav/ui/wizard/cZ;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/cZ;->a(I)Lcom/google/googlenav/ui/wizard/cZ;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/google/googlenav/ui/wizard/cZ;->b(Z)Lcom/google/googlenav/ui/wizard/cZ;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/googlenav/ui/wizard/cZ;->a(Lcom/google/googlenav/ui/wizard/cR;)Lcom/google/googlenav/ui/wizard/cZ;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/googlenav/ui/wizard/cZ;->c(Ljava/lang/String;)Lcom/google/googlenav/ui/wizard/cZ;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/wizard/cZ;->d(Ljava/lang/String;)Lcom/google/googlenav/ui/wizard/cZ;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/googlenav/ui/wizard/cZ;->a(B)Lcom/google/googlenav/ui/wizard/cZ;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/cZ;->c(Z)Lcom/google/googlenav/ui/wizard/cZ;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/google/googlenav/ui/wizard/cZ;->d(Z)Lcom/google/googlenav/ui/wizard/cZ;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/google/googlenav/ui/wizard/hM;->a(Lcom/google/googlenav/ui/wizard/cZ;)V

    return-void
.end method

.method public i()Lau/x;
    .registers 2

    iget-object v0, p0, LaY/br;->F:Lau/x;

    return-object v0
.end method

.method public j()Landroid/view/View$OnClickListener;
    .registers 2

    iget-object v0, p0, LaY/br;->G:Landroid/view/View$OnClickListener;

    if-nez v0, :cond_b

    new-instance v0, LaY/bt;

    invoke-direct {v0, p0}, LaY/bt;-><init>(LaY/br;)V

    iput-object v0, p0, LaY/br;->G:Landroid/view/View$OnClickListener;

    :cond_b
    iget-object v0, p0, LaY/br;->G:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public o()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, LaY/br;->E:Z

    invoke-super {p0}, LaY/bb;->o()V

    return-void
.end method
