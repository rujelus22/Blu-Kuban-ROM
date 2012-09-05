.class public Lcom/google/googlenav/ui/wizard/gY;
.super Lcom/google/googlenav/ui/wizard/z;


# instance fields
.field a:Lbd/aq;

.field private g:Lcom/google/googlenav/ui/wizard/hg;

.field private h:Lam/b;

.field private i:Ljava/lang/String;

.field private j:LaJ/B;

.field private k:Laz/a;

.field private l:Lcom/google/googlenav/ui/wizard/hh;

.field private m:Z


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/wizard/hM;Laz/a;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/z;-><init>(Lcom/google/googlenav/ui/wizard/hM;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/gY;->i:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/gY;->k:Laz/a;

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/gY;)Lcom/google/googlenav/ui/wizard/hg;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gY;->g:Lcom/google/googlenav/ui/wizard/hg;

    return-object v0
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/gY;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/gY;->i:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/gY;Ljava/lang/String;JJ)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/google/googlenav/ui/wizard/gY;->a(Ljava/lang/String;JJ)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/gY;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/gY;->a(Ljava/util/List;)V

    return-void
.end method

.method private a(Ljava/lang/String;JJ)V
    .registers 14

    const/4 v7, 0x2

    const/16 v6, 0x15

    const/4 v5, 0x3

    const/4 v4, 0x1

    iget-boolean v0, p0, Lcom/google/googlenav/ui/wizard/gY;->m:Z

    if-eqz v0, :cond_6f

    invoke-static {}, Lax/aA;->u()V

    :goto_c
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gY;->a:Lbd/aq;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gY;->a:Lbd/aq;

    invoke-virtual {v0}, Lbd/aq;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gY;->a:Lbd/aq;

    invoke-virtual {v0}, Lbd/aq;->hide()V

    :cond_1d
    new-instance v0, Lam/b;

    sget-object v1, LbF/G;->d:Lam/e;

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    new-instance v1, Lam/b;

    sget-object v2, LbF/G;->c:Lam/e;

    invoke-direct {v1, v2}, Lam/b;-><init>(Lam/e;)V

    const/4 v2, 0x4

    invoke-virtual {v1, v2, p1}, Lam/b;->a(ILjava/lang/String;)V

    new-instance v2, Lam/b;

    sget-object v3, LbF/G;->a:Lam/e;

    invoke-direct {v2, v3}, Lam/b;-><init>(Lam/e;)V

    invoke-virtual {v2, v4, p2, p3}, Lam/b;->b(IJ)V

    invoke-virtual {v2, v7, p4, p5}, Lam/b;->b(IJ)V

    invoke-virtual {v1, v4, v2}, Lam/b;->b(ILam/b;)V

    sget-object v2, Lcom/google/googlenav/ui/wizard/hf;->a:[I

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/gY;->l:Lcom/google/googlenav/ui/wizard/hh;

    invoke-virtual {v3}, Lcom/google/googlenav/ui/wizard/hh;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_9a

    :goto_4c
    new-instance v7, Lax/aV;

    new-instance v2, Lcom/google/googlenav/ui/wizard/hd;

    invoke-direct {v2, p0, v1}, Lcom/google/googlenav/ui/wizard/hd;-><init>(Lcom/google/googlenav/ui/wizard/gY;Lam/b;)V

    invoke-direct {v7, v0, v2}, Lax/aV;-><init>(Lam/b;Lax/aW;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gY;->b:Lcom/google/googlenav/ui/wizard/hM;

    const/16 v1, 0x14e

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v3, Lcom/google/googlenav/ui/wizard/x;->a:Lcom/google/googlenav/ui/wizard/y;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/google/googlenav/ui/wizard/hM;->a(Ljava/lang/String;Lat/d;Lcom/google/googlenav/ui/wizard/y;JZ)V

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v0

    invoke-virtual {v0, v7}, Lat/h;->c(Lat/g;)V

    return-void

    :cond_6f
    invoke-static {}, Lax/aA;->v()V

    goto :goto_c

    :pswitch_73
    const/16 v2, 0x10

    invoke-virtual {v1, v2, v4}, Lam/b;->b(IZ)V

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/gY;->h:Lam/b;

    invoke-virtual {v2, v5}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Lam/b;->b(ILjava/lang/String;)V

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/gY;->h:Lam/b;

    invoke-virtual {v2, v6}, Lam/b;->k(I)Z

    move-result v2

    if-eqz v2, :cond_92

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/gY;->h:Lam/b;

    invoke-virtual {v2, v6}, Lam/b;->d(I)I

    move-result v2

    invoke-virtual {v1, v6, v2}, Lam/b;->h(II)V

    :cond_92
    invoke-virtual {v0, v7, v1}, Lam/b;->b(ILam/b;)V

    goto :goto_4c

    :pswitch_96
    invoke-virtual {v0, v5, v1}, Lam/b;->b(ILam/b;)V

    goto :goto_4c

    :pswitch_data_9a
    .packed-switch 0x1
        :pswitch_73
        :pswitch_96
    .end packed-switch
.end method

.method private a(Ljava/util/List;)V
    .registers 6

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    invoke-virtual {v0}, Landroid/location/Address;->getMaxAddressLineIndex()I

    move-result v3

    if-ltz v3, :cond_8

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_1e
    new-instance v0, Lbd/aq;

    new-instance v2, Lcom/google/googlenav/ui/wizard/hc;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/wizard/hc;-><init>(Lcom/google/googlenav/ui/wizard/gY;)V

    invoke-direct {v0, v1, v2, p0}, Lbd/aq;-><init>(Ljava/util/List;Lbd/as;Lcom/google/googlenav/ui/p;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/gY;->a:Lbd/aq;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gY;->f:Lcom/google/googlenav/ui/view/android/bs;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bs;->dismiss()V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gY;->a:Lbd/aq;

    invoke-virtual {v0}, Lbd/aq;->show()V

    return-void
.end method


# virtual methods
.method public W_()V
    .registers 6

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gY;->g:Lcom/google/googlenav/ui/wizard/hg;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/gY;->h:Lam/b;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/gY;->l:Lcom/google/googlenav/ui/wizard/hh;

    iget-boolean v3, p0, Lcom/google/googlenav/ui/wizard/gY;->m:Z

    iput-object v4, p0, Lcom/google/googlenav/ui/wizard/gY;->g:Lcom/google/googlenav/ui/wizard/hg;

    iput-object v4, p0, Lcom/google/googlenav/ui/wizard/gY;->h:Lam/b;

    iput-object v4, p0, Lcom/google/googlenav/ui/wizard/gY;->l:Lcom/google/googlenav/ui/wizard/hh;

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/google/googlenav/ui/wizard/gY;->m:Z

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/gY;->a()V

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/googlenav/ui/wizard/gY;->a(Lcom/google/googlenav/ui/wizard/hg;Lam/b;Lcom/google/googlenav/ui/wizard/hh;Z)V

    return-void
.end method

.method public a(Laq/b;)I
    .registers 4

    invoke-virtual {p1}, Laq/b;->c()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_e

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/gY;->o()V

    iget v0, p0, Lcom/google/googlenav/ui/wizard/gY;->e:I

    :goto_d
    return v0

    :cond_e
    iget v0, p0, Lcom/google/googlenav/ui/wizard/gY;->e:I

    goto :goto_d
.end method

.method public a(Laq/c;)I
    .registers 3

    iget v0, p0, Lcom/google/googlenav/ui/wizard/gY;->e:I

    return v0
.end method

.method public a(Lcom/google/googlenav/ui/wizard/hg;Lam/b;Lcom/google/googlenav/ui/wizard/hh;Z)V
    .registers 5

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/gY;->g:Lcom/google/googlenav/ui/wizard/hg;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/gY;->h:Lam/b;

    iput-object p3, p0, Lcom/google/googlenav/ui/wizard/gY;->l:Lcom/google/googlenav/ui/wizard/hh;

    iput-boolean p4, p0, Lcom/google/googlenav/ui/wizard/gY;->m:Z

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/gY;->l()V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 9

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/google/googlenav/ui/wizard/gY;->m:Z

    if-eqz v0, :cond_b

    const-string v0, "home_speedbump_ack"

    invoke-static {v0, v1, v2}, Lax/be;->a(Ljava/lang/String;ILax/bk;)V

    :cond_b
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    :goto_13
    return-void

    :cond_14
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gY;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gY;->h:Lam/b;

    invoke-virtual {v0, v1}, Lam/b;->k(I)Z

    move-result v0

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gY;->h:Lam/b;

    invoke-virtual {v0, v1}, Lam/b;->h(I)Lam/b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lam/b;->d(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lam/b;->d(I)I

    move-result v0

    :goto_33
    int-to-long v2, v1

    int-to-long v4, v0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ui/wizard/gY;->a(Ljava/lang/String;JJ)V

    goto :goto_13

    :cond_3b
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gY;->j:LaJ/B;

    invoke-virtual {v0}, LaJ/B;->d()I

    move-result v1

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gY;->j:LaJ/B;

    invoke-virtual {v0}, LaJ/B;->f()I

    move-result v0

    goto :goto_33

    :cond_48
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gY;->b:Lcom/google/googlenav/ui/wizard/hM;

    const/16 v1, 0x1a2

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/google/googlenav/ui/wizard/x;->a:Lcom/google/googlenav/ui/wizard/y;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/google/googlenav/ui/wizard/hM;->a(Ljava/lang/String;Lat/d;Lcom/google/googlenav/ui/wizard/y;JZ)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gY;->k:Laz/a;

    const/4 v1, 0x5

    new-instance v2, Lcom/google/googlenav/ui/wizard/gZ;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/wizard/gZ;-><init>(Lcom/google/googlenav/ui/wizard/gY;)V

    invoke-virtual {v0, p1, v1, v2}, Laz/a;->a(Ljava/lang/String;ILaz/c;)V

    goto :goto_13
.end method

.method public a(IILjava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/googlenav/ui/wizard/gY;->e:I

    const/4 v0, 0x0

    return v0
.end method

.method public b()V
    .registers 4

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/googlenav/ui/wizard/gY;->e:I

    new-instance v0, Lbd/av;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/gY;->l:Lcom/google/googlenav/ui/wizard/hh;

    iget-boolean v2, p0, Lcom/google/googlenav/ui/wizard/gY;->m:Z

    invoke-direct {v0, p0, v1, v2}, Lbd/av;-><init>(Lcom/google/googlenav/ui/wizard/gY;Lcom/google/googlenav/ui/wizard/hh;Z)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/gY;->f:Lcom/google/googlenav/ui/view/android/bs;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gY;->f:Lcom/google/googlenav/ui/view/android/bs;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bs;->show()V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/gY;->f()V

    return-void
.end method

.method protected c()V
    .registers 3

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/google/googlenav/ui/wizard/z;->c()V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gY;->a:Lbd/aq;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gY;->a:Lbd/aq;

    invoke-virtual {v0}, Lbd/aq;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gY;->a:Lbd/aq;

    invoke-virtual {v0}, Lbd/aq;->dismiss()V

    :cond_15
    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/gY;->h:Lam/b;

    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/gY;->g:Lcom/google/googlenav/ui/wizard/hg;

    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/gY;->i:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/gY;->j:LaJ/B;

    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/gY;->a:Lbd/aq;

    return-void
.end method

.method public e()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gY;->g:Lcom/google/googlenav/ui/wizard/hg;

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/hg;->a()V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/gY;->a()V

    return-void
.end method

.method public f()V
    .registers 4

    const/4 v2, 0x4

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gY;->h:Lam/b;

    invoke-virtual {v0, v2}, Lam/b;->k(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gY;->h:Lam/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lam/b;->f(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/gY;->i:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gY;->f:Lcom/google/googlenav/ui/view/android/bs;

    check-cast v0, Lbd/av;

    invoke-virtual {v0, v1}, Lbd/av;->a(Ljava/lang/String;)V

    :cond_19
    :goto_19
    return-void

    :cond_1a
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gY;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->B()LaE/h;

    move-result-object v0

    invoke-virtual {v0}, LaE/h;->m()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gY;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->B()LaE/h;

    move-result-object v0

    invoke-virtual {v0}, LaE/h;->q()LaJ/B;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/gY;->j:LaJ/B;

    new-instance v1, Lcom/google/googlenav/aS;

    const/4 v2, -0x1

    invoke-direct {v1, v0, v2}, Lcom/google/googlenav/aS;-><init>(LaJ/B;I)V

    new-instance v0, Lcom/google/googlenav/ui/wizard/he;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/wizard/he;-><init>(Lcom/google/googlenav/ui/wizard/gY;)V

    invoke-virtual {v1, v0}, Lcom/google/googlenav/aS;->a(Lcom/google/googlenav/aT;)V

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v0

    invoke-virtual {v0, v1}, Lat/h;->c(Lat/g;)V

    goto :goto_19
.end method

.method public o()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gY;->a:Lbd/aq;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gY;->a:Lbd/aq;

    invoke-virtual {v0}, Lbd/aq;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gY;->a:Lbd/aq;

    invoke-virtual {v0}, Lbd/aq;->dismiss()V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gY;->f:Lcom/google/googlenav/ui/view/android/bs;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bs;->show()V

    :goto_16
    return-void

    :cond_17
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/gY;->e()V

    goto :goto_16
.end method
