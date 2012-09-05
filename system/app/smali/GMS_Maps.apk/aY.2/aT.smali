.class public LaY/aT;
.super LaY/m;

# interfaces
.implements LaY/k;
.implements Lcom/google/googlenav/login/i;


# instance fields
.field protected C:Ljava/lang/String;

.field private D:Lcom/google/googlenav/ui/wizard/cR;

.field private E:I


# direct methods
.method protected constructor <init>(Lcom/google/googlenav/ui/D;LaJ/p;LaJ/u;Lcom/google/googlenav/ui/af;)V
    .registers 8

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, LaY/m;-><init>(Lcom/google/googlenav/ui/D;LaJ/p;LaJ/u;Lcom/google/googlenav/ui/af;)V

    const/4 v0, 0x0

    iput-object v0, p0, LaY/aT;->D:Lcom/google/googlenav/ui/wizard/cR;

    iput v2, p0, LaY/aT;->E:I

    new-instance v0, Lcom/google/googlenav/bu;

    invoke-virtual {p1}, Lcom/google/googlenav/ui/D;->as()LaM/f;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/google/googlenav/bu;-><init>(LaM/f;LaY/k;)V

    iput-object v0, p0, LaY/aT;->f:Lcom/google/googlenav/E;

    invoke-virtual {p0, v2}, LaY/aT;->h(Z)V

    return-void
.end method

.method private bN()V
    .registers 4

    invoke-virtual {p0}, LaY/aT;->bI()Lcom/google/googlenav/bu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/bu;->b()Z

    const/4 v0, 0x1

    iget-object v1, p0, LaY/aT;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/D;->ae()Lcom/google/googlenav/android/ac;

    move-result-object v1

    new-instance v2, LaY/aU;

    invoke-direct {v2, p0}, LaY/aU;-><init>(LaY/aT;)V

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/android/ac;->a(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method private d(Ljava/lang/String;)V
    .registers 7

    const/4 v4, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0}, LaY/aT;->bJ()LaM/f;

    move-result-object v1

    invoke-interface {v1}, LaM/f;->g()LaM/i;

    move-result-object v1

    invoke-interface {v1, p1}, LaM/i;->b(Ljava/lang/String;)LaM/n;

    move-result-object v1

    if-eqz v1, :cond_39

    invoke-virtual {v1}, LaM/n;->b()Lam/b;

    move-result-object v2

    if-eqz v2, :cond_39

    invoke-virtual {v1}, LaM/n;->b()Lam/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lam/b;->h(I)Lam/b;

    move-result-object v1

    invoke-static {v1}, Lcom/google/googlenav/ah;->a(Lam/b;)Lcom/google/googlenav/ah;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, p0, LaY/aT;->D:Lcom/google/googlenav/ui/wizard/cR;

    invoke-static {v1}, Lau/x;->c(Lcom/google/googlenav/ah;)Lau/x;

    move-result-object v1

    invoke-interface {v3, v1, v2, v4, v4}, Lcom/google/googlenav/ui/wizard/cR;->a(Lau/x;Ljava/lang/Long;Lam/b;Lcom/google/googlenav/aV;)V

    iget-object v1, p0, LaY/aT;->D:Lcom/google/googlenav/ui/wizard/cR;

    instance-of v1, v1, Lcom/google/googlenav/ui/wizard/cV;

    if-nez v1, :cond_67

    :goto_37
    iput-object v4, p0, LaY/aT;->D:Lcom/google/googlenav/ui/wizard/cR;

    :cond_39
    if-eqz v0, :cond_66

    invoke-virtual {p0}, LaY/aT;->m()V

    iget-object v0, p0, LaY/aT;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->aC()Lcom/google/googlenav/ui/wizard/hM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->N()Lcom/google/googlenav/ui/wizard/hS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hS;->Y()Z

    move-result v0

    if-eqz v0, :cond_55

    invoke-virtual {p0}, LaY/aT;->bL()Lcom/google/googlenav/ui/wizard/dB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/dB;->a()V

    :cond_55
    iget-object v0, p0, LaY/aT;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->aC()Lcom/google/googlenav/ui/wizard/hM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->N()Lcom/google/googlenav/ui/wizard/hS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hS;->i()Lcom/google/googlenav/ui/wizard/bu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/bu;->l()V

    :cond_66
    return-void

    :cond_67
    const/4 v0, 0x0

    goto :goto_37
.end method

.method private j(I)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, LaY/aT;->bL()Lcom/google/googlenav/ui/wizard/dB;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/wizard/dB;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private k(I)V
    .registers 5

    invoke-virtual {p0}, LaY/aT;->as()Lcom/google/googlenav/E;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/E;->f()I

    move-result v0

    if-ge p1, v0, :cond_c

    if-gez p1, :cond_d

    :cond_c
    :goto_c
    return-void

    :cond_d
    invoke-virtual {p0}, LaY/aT;->as()Lcom/google/googlenav/E;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/googlenav/E;->b(I)Lcom/google/googlenav/D;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/D;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, LaY/aT;->D:Lcom/google/googlenav/ui/wizard/cR;

    if-eqz v1, :cond_23

    invoke-direct {p0, v0}, LaY/aT;->d(Ljava/lang/String;)V

    goto :goto_c

    :cond_23
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, LaY/aT;->a(Ljava/lang/String;Z)V

    iput p1, p0, LaY/aT;->E:I

    iget-object v0, p0, LaY/aT;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->aC()Lcom/google/googlenav/ui/wizard/hM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->N()Lcom/google/googlenav/ui/wizard/hS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hS;->Y()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, LaY/aT;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->aC()Lcom/google/googlenav/ui/wizard/hM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->N()Lcom/google/googlenav/ui/wizard/hS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hS;->w()Lcom/google/googlenav/ui/wizard/dB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/dB;->a()V

    iget-object v0, p0, LaY/aT;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->av()Lcom/google/googlenav/ui/wizard/x;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/ui/wizard/y;

    const/16 v2, 0x1c

    invoke-direct {v1, v2}, Lcom/google/googlenav/ui/wizard/y;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/x;->a(Lcom/google/googlenav/ui/wizard/y;)V

    goto :goto_c
.end method


# virtual methods
.method public B_()V
    .registers 1

    return-void
.end method

.method public C_()V
    .registers 1

    return-void
.end method

.method public E()I
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0}, LaY/aT;->aB()Z

    move-result v1

    if-eqz v1, :cond_b

    iget v1, p0, LaY/aT;->E:I

    if-gez v1, :cond_c

    :cond_b
    :goto_b
    return v0

    :cond_c
    invoke-virtual {p0, v0}, LaY/aT;->h(Z)V

    iget v0, p0, LaY/aT;->E:I

    goto :goto_b
.end method

.method public E_()V
    .registers 1

    invoke-direct {p0}, LaY/aT;->bN()V

    return-void
.end method

.method public F_()V
    .registers 1

    invoke-direct {p0}, LaY/aT;->bN()V

    return-void
.end method

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

.method protected X()Z
    .registers 3

    invoke-super {p0}, LaY/m;->X()Z

    move-result v0

    invoke-virtual {p0}, LaY/aT;->bI()Lcom/google/googlenav/bu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/bu;->b()Z

    move-result v1

    if-nez v0, :cond_10

    if-eqz v1, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method protected a(Lcom/google/googlenav/E;)V
    .registers 3

    iput-object p1, p0, LaY/aT;->f:Lcom/google/googlenav/E;

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, LaY/aT;->b(I)V

    return-void
.end method

.method public a(Lcom/google/googlenav/ui/C;Ljava/lang/String;)V
    .registers 7

    invoke-virtual {p0, p2}, LaY/aT;->b(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, LaY/aT;->as()Lcom/google/googlenav/E;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/googlenav/E;->b(I)Lcom/google/googlenav/D;

    move-result-object v1

    if-eqz v1, :cond_28

    invoke-interface {v1}, Lcom/google/googlenav/D;->a()LaJ/B;

    move-result-object v1

    iget-object v2, p0, LaY/aT;->c:LaJ/p;

    iget-object v3, p0, LaY/aT;->e:Landroid/graphics/Point;

    invoke-virtual {v2, v1, v3}, LaJ/p;->a(LaJ/B;Landroid/graphics/Point;)V

    invoke-virtual {p0, v0}, LaY/aT;->c(I)Lcom/google/googlenav/e;

    move-result-object v0

    iget-object v1, p0, LaY/aT;->e:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, LaY/aT;->e:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-static {v0, p1, v1, v2}, Lcom/google/googlenav/e;->a(Lcom/google/googlenav/e;Lcom/google/googlenav/ui/C;II)V

    :cond_28
    return-void
.end method

.method public a(Lcom/google/googlenav/ui/wizard/cR;)V
    .registers 2

    iput-object p1, p0, LaY/aT;->D:Lcom/google/googlenav/ui/wizard/cR;

    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .registers 6

    const/4 v1, 0x0

    invoke-virtual {p0}, LaY/aT;->as()Lcom/google/googlenav/E;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/bu;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/bu;->a(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_30

    invoke-virtual {p0, v0}, LaY/aT;->b(I)V

    iget-object v0, p0, LaY/aT;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->ar()LaY/Y;

    move-result-object v0

    invoke-virtual {v0, p0}, LaY/Y;->c(LaY/i;)V

    invoke-virtual {p0}, LaY/aT;->bH()V

    iput v1, p0, LaY/aT;->E:I

    if-eqz p2, :cond_31

    const/16 v0, 0xe

    :goto_23
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, LaY/aT;->a(ILjava/lang/Object;)V

    invoke-virtual {p0}, LaY/aT;->bJ()LaM/f;

    move-result-object v0

    const-string v1, "s"

    invoke-interface {v0, v1, p1}, LaM/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_30
    return-void

    :cond_31
    move v0, v1

    goto :goto_23
.end method

.method public a(IILjava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    iget-object v1, p0, LaY/aT;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/D;->as()LaM/f;

    move-result-object v1

    sparse-switch p1, :sswitch_data_82

    invoke-super {p0, p1, p2, p3}, LaY/m;->a(IILjava/lang/Object;)Z

    move-result v0

    :cond_e
    :goto_e
    return v0

    :sswitch_f
    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/M;->ak()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-virtual {p0}, LaY/aT;->ao()Z

    invoke-virtual {p0, v0}, LaY/aT;->b(Z)V

    goto :goto_e

    :cond_20
    iget-object v1, p0, LaY/aT;->f:Lcom/google/googlenav/E;

    invoke-interface {v1}, Lcom/google/googlenav/E;->c()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, LaY/aT;->a(Ljava/lang/Object;)V

    goto :goto_e

    :sswitch_2e
    invoke-direct {p0, p2}, LaY/aT;->j(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-virtual {p0, v1}, LaY/aT;->b(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1}, LaY/aT;->k(I)V

    goto :goto_e

    :sswitch_3c
    invoke-interface {v1}, LaM/f;->g()LaM/i;

    move-result-object v2

    invoke-interface {v2}, LaM/i;->c()V

    invoke-interface {v1}, LaM/f;->d()V

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/M;->ak()Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p0, LaY/aT;->b:Lcom/google/googlenav/ui/D;

    const/16 v2, 0x491

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/D;->a(Ljava/lang/String;)V

    goto :goto_e

    :sswitch_5c
    invoke-virtual {p0}, LaY/aT;->bM()V

    goto :goto_e

    :sswitch_60
    if-eqz p3, :cond_67

    invoke-super {p0, p1, p2, p3}, LaY/m;->a(IILjava/lang/Object;)Z

    move-result v0

    goto :goto_e

    :cond_67
    invoke-direct {p0, p2}, LaY/aT;->j(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-virtual {p0, v1}, LaY/aT;->b(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, LaY/aT;->bI()Lcom/google/googlenav/bu;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/bu;->a(I)V

    const/4 v1, 0x0

    invoke-super {p0, p1, v0, v1}, LaY/m;->a(IILjava/lang/Object;)Z

    move-result v0

    goto :goto_e

    :sswitch_7e
    invoke-virtual {p0}, LaY/aT;->W()V

    goto :goto_e

    :sswitch_data_82
    .sparse-switch
        0x1 -> :sswitch_f
        0x3f9 -> :sswitch_7e
        0x578 -> :sswitch_60
        0x579 -> :sswitch_3c
        0x57a -> :sswitch_2e
        0x57b -> :sswitch_5c
    .end sparse-switch
.end method

.method public a(Lbb/E;)Z
    .registers 4

    iget-object v0, p0, LaY/aT;->g:Lbb/d;

    if-eqz v0, :cond_10

    iget-object v0, p0, LaY/aT;->g:Lbb/d;

    if-ne p1, v0, :cond_10

    const/16 v0, 0x9

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, LaY/aT;->a(ILjava/lang/Object;)V

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    invoke-super {p0, p1}, LaY/m;->a(Lbb/E;)Z

    move-result v0

    goto :goto_f
.end method

.method public aG()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public aW()V
    .registers 2

    invoke-virtual {p0}, LaY/aT;->bI()Lcom/google/googlenav/bu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/bu;->a()V

    invoke-super {p0}, LaY/m;->aW()V

    return-void
.end method

.method public aZ()V
    .registers 2

    invoke-virtual {p0}, LaY/aT;->s()Lcom/google/googlenav/D;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ah;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->A()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LaY/aT;->C:Ljava/lang/String;

    :cond_e
    invoke-super {p0}, LaY/m;->aZ()V

    return-void
.end method

.method protected an()V
    .registers 4

    iget-object v0, p0, LaY/aT;->f:Lcom/google/googlenav/E;

    invoke-interface {v0}, Lcom/google/googlenav/E;->e()Lcom/google/googlenav/D;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ah;

    iget-object v1, p0, LaY/aT;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/D;->as()LaM/f;

    move-result-object v1

    const-string v2, "v"

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->A()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, LaM/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected ar()V
    .registers 2

    invoke-virtual {p0}, LaY/aT;->bL()Lcom/google/googlenav/ui/wizard/dB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/dB;->l()V

    return-void
.end method

.method public ax()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method

.method public b(Lcom/google/googlenav/D;)I
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public b(Ljava/lang/String;)I
    .registers 3

    invoke-virtual {p0}, LaY/aT;->bI()Lcom/google/googlenav/bu;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlenav/bu;->a(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public b(LaY/i;)V
    .registers 3

    invoke-virtual {p0}, LaY/aT;->af()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, LaY/aT;->bs()V

    :cond_9
    :goto_9
    invoke-virtual {p0}, LaY/aT;->R()V

    return-void

    :cond_d
    iget-object v0, p0, LaY/aT;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->aC()Lcom/google/googlenav/ui/wizard/hM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->N()Lcom/google/googlenav/ui/wizard/hS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hS;->Y()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, LaY/aT;->bJ()LaM/f;

    move-result-object v0

    invoke-interface {v0}, LaM/f;->f()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p0}, LaY/aT;->bL()Lcom/google/googlenav/ui/wizard/dB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/dB;->e()V

    goto :goto_9
.end method

.method protected bE()I
    .registers 3

    invoke-virtual {p0}, LaY/aT;->bI()Lcom/google/googlenav/bu;

    move-result-object v0

    iget-object v1, p0, LaY/aT;->C:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/bu;->a(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_d

    const/4 v0, -0x2

    :cond_d
    return v0
.end method

.method public bH()V
    .registers 3

    invoke-virtual {p0}, LaY/aT;->s()Lcom/google/googlenav/D;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ah;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->a()LaJ/B;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v1, p0, LaY/aT;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/D;->T()V

    iget-object v1, p0, LaY/aT;->d:LaJ/u;

    invoke-virtual {v1, v0}, LaJ/u;->c(LaJ/B;)V

    :cond_18
    return-void
.end method

.method public bI()Lcom/google/googlenav/bu;
    .registers 2

    invoke-virtual {p0}, LaY/aT;->as()Lcom/google/googlenav/E;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/bu;

    return-object v0
.end method

.method public bJ()LaM/f;
    .registers 2

    iget-object v0, p0, LaY/aT;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->as()LaM/f;

    move-result-object v0

    return-object v0
.end method

.method public bK()Lcom/google/googlenav/ui/at;
    .registers 2

    iget-object v0, p0, LaY/aT;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->aw()Lcom/google/googlenav/ui/at;

    move-result-object v0

    return-object v0
.end method

.method public bL()Lcom/google/googlenav/ui/wizard/dB;
    .registers 2

    iget-object v0, p0, LaY/aT;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->aC()Lcom/google/googlenav/ui/wizard/hM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->N()Lcom/google/googlenav/ui/wizard/hS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hS;->w()Lcom/google/googlenav/ui/wizard/dB;

    move-result-object v0

    return-object v0
.end method

.method public bM()V
    .registers 2

    iget-object v0, p0, LaY/aT;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->as()LaM/f;

    move-result-object v0

    invoke-interface {v0}, LaM/f;->c()V

    return-void
.end method

.method public bl()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public bm()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected bw()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public c(Lcom/google/googlenav/D;)I
    .registers 3

    invoke-virtual {p0, p1}, LaY/aT;->f(Lcom/google/googlenav/D;)I

    move-result v0

    if-eqz v0, :cond_b

    div-int/lit8 v0, v0, 0x2

    rsub-int/lit8 v0, v0, 0x2

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method protected c()V
    .registers 2

    invoke-virtual {p0}, LaY/aT;->bE()I

    move-result v0

    invoke-virtual {p0, v0}, LaY/aT;->i(I)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 4

    invoke-virtual {p0}, LaY/aT;->bI()Lcom/google/googlenav/bu;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlenav/bu;->a(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1d

    iget-object v1, p0, LaY/aT;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/D;->ar()LaY/Y;

    move-result-object v1

    invoke-virtual {v1, p0}, LaY/Y;->c(LaY/i;)V

    invoke-virtual {p0, v0}, LaY/aT;->b(I)V

    invoke-virtual {p0}, LaY/aT;->ao()Z

    invoke-virtual {p0}, LaY/aT;->bH()V

    :cond_1d
    return-void
.end method

.method public e(ILjava/lang/Object;)V
    .registers 6

    iget-object v0, p0, LaY/aT;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->aC()Lcom/google/googlenav/ui/wizard/hM;

    move-result-object v0

    iget-object v1, p0, LaY/aT;->b:Lcom/google/googlenav/ui/D;

    const-string v2, "stars"

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/ui/wizard/hM;->a(Lcom/google/googlenav/ui/D;Ljava/lang/String;)V

    return-void
.end method

.method protected f()Lba/a;
    .registers 2

    new-instance v0, Lba/j;

    invoke-direct {v0, p0}, Lba/j;-><init>(LaY/i;)V

    return-object v0
.end method

.method protected f(Laq/b;)Z
    .registers 5

    const/4 v0, 0x1

    invoke-virtual {p0}, LaY/aT;->ah()Z

    move-result v1

    if-nez v1, :cond_1b

    invoke-virtual {p1}, Laq/b;->c()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_1b

    invoke-virtual {p0}, LaY/aT;->ag()Z

    move-result v1

    if-eqz v1, :cond_1b

    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, LaY/aT;->a(ILjava/lang/Object;)V

    :goto_1a
    return v0

    :cond_1b
    invoke-virtual {p1}, Laq/b;->c()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_33

    iget-object v1, p0, LaY/aT;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/D;->av()Lcom/google/googlenav/ui/wizard/x;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/x;->b()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-virtual {p0}, LaY/aT;->o()V

    goto :goto_1a

    :cond_33
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method public g(I)Z
    .registers 3

    packed-switch p1, :pswitch_data_a

    invoke-super {p0, p1}, LaY/m;->g(I)Z

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

.method public i()V
    .registers 1

    invoke-direct {p0}, LaY/aT;->bN()V

    return-void
.end method

.method protected i(I)V
    .registers 4

    iget-object v0, p0, LaY/aT;->f:Lcom/google/googlenav/E;

    invoke-interface {v0}, Lcom/google/googlenav/E;->f()I

    move-result v0

    if-ge p1, v0, :cond_18

    iget-object v0, p0, LaY/aT;->f:Lcom/google/googlenav/E;

    invoke-interface {v0, p1}, Lcom/google/googlenav/E;->a(I)V

    invoke-virtual {p0}, LaY/aT;->ao()Z

    invoke-virtual {p0}, LaY/aT;->bH()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, LaY/aT;->a(ILjava/lang/Object;)V

    :cond_18
    return-void
.end method

.method protected l()V
    .registers 4

    iget-object v0, p0, LaY/aT;->f:Lcom/google/googlenav/E;

    invoke-interface {v0}, Lcom/google/googlenav/E;->e()Lcom/google/googlenav/D;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ah;

    if-nez v0, :cond_b

    :goto_a
    return-void

    :cond_b
    invoke-virtual {v0}, Lcom/google/googlenav/ah;->A()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, LaY/aT;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/D;->as()LaM/f;

    move-result-object v2

    invoke-interface {v2, v1}, LaM/f;->a(Ljava/lang/String;)V

    iget-object v2, p0, LaY/aT;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/D;->as()LaM/f;

    move-result-object v2

    invoke-interface {v2}, LaM/f;->g()LaM/i;

    move-result-object v2

    invoke-interface {v2, v1}, LaM/i;->e(Ljava/lang/String;)V

    iget-object v1, p0, LaY/aT;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/D;->as()LaM/f;

    move-result-object v1

    const-string v2, "o"

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->A()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, LaM/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, LaY/m;->l()V

    goto :goto_a
.end method

.method protected m()V
    .registers 2

    iget-object v0, p0, LaY/aT;->f:Lcom/google/googlenav/E;

    invoke-interface {v0}, Lcom/google/googlenav/E;->c()I

    move-result v0

    if-ltz v0, :cond_c

    invoke-super {p0}, LaY/m;->m()V

    :goto_b
    return-void

    :cond_c
    invoke-virtual {p0}, LaY/aT;->Z()V

    goto :goto_b
.end method

.method public o()V
    .registers 5

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, LaY/aT;->bA()Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    iput-object v3, p0, LaY/aT;->D:Lcom/google/googlenav/ui/wizard/cR;

    iget-object v0, p0, LaY/aT;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->av()Lcom/google/googlenav/ui/wizard/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/x;->d()Lcom/google/googlenav/ui/wizard/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/y;->a()I

    move-result v1

    sparse-switch v1, :sswitch_data_8e

    invoke-virtual {p0}, LaY/aT;->m()V

    goto :goto_8

    :sswitch_20
    iget-object v0, p0, LaY/aT;->f:Lcom/google/googlenav/E;

    invoke-interface {v0}, Lcom/google/googlenav/E;->c()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, LaY/aT;->b(ILjava/lang/Object;)V

    goto :goto_8

    :sswitch_2e
    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/y;->b()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/y;->b()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Integer;

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/y;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, LaY/aT;->i(I)V

    goto :goto_8

    :sswitch_4a
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, LaY/aT;->h(Z)V

    invoke-virtual {p0}, LaY/aT;->k()V

    goto :goto_8

    :sswitch_52
    invoke-virtual {p0}, LaY/aT;->m()V

    iget-object v0, p0, LaY/aT;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->aC()Lcom/google/googlenav/ui/wizard/hM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->k()V

    goto :goto_8

    :sswitch_5f
    iget-object v0, p0, LaY/aT;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->aC()Lcom/google/googlenav/ui/wizard/hM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->N()Lcom/google/googlenav/ui/wizard/hS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hS;->v()Lcom/google/googlenav/ui/wizard/cA;

    move-result-object v0

    const/16 v1, 0x32c

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/googlenav/ui/wizard/cA;->a(IILjava/lang/Object;)Z

    invoke-virtual {p0}, LaY/aT;->m()V

    goto :goto_8

    :sswitch_76
    invoke-virtual {p0}, LaY/aT;->Z()V

    iget-object v0, p0, LaY/aT;->b:Lcom/google/googlenav/ui/D;

    const-string v1, "15"

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/D;->g(Ljava/lang/String;)V

    goto :goto_8

    :sswitch_81
    invoke-virtual {p0}, LaY/aT;->Z()V

    iget-object v0, p0, LaY/aT;->b:Lcom/google/googlenav/ui/D;

    const-string v1, "stars"

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/D;->d(Ljava/lang/String;)V

    goto/16 :goto_8

    nop

    :sswitch_data_8e
    .sparse-switch
        0x6 -> :sswitch_76
        0x7 -> :sswitch_2e
        0x9 -> :sswitch_20
        0xe -> :sswitch_4a
        0x10 -> :sswitch_52
        0x16 -> :sswitch_5f
        0x1c -> :sswitch_81
    .end sparse-switch
.end method

.method public s()Lcom/google/googlenav/D;
    .registers 2

    iget-object v0, p0, LaY/aT;->f:Lcom/google/googlenav/E;

    invoke-interface {v0}, Lcom/google/googlenav/E;->e()Lcom/google/googlenav/D;

    move-result-object v0

    return-object v0
.end method
