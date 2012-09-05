.class public Lcom/google/googlenav/ui/wizard/o;
.super Lcom/google/googlenav/ui/wizard/z;


# instance fields
.field a:Lcom/google/googlenav/ui/wizard/v;

.field private g:Lcom/google/googlenav/ui/wizard/e;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/wizard/hM;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/z;-><init>(Lcom/google/googlenav/ui/wizard/hM;)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/o;)Lcom/google/googlenav/ui/wizard/e;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/o;->g:Lcom/google/googlenav/ui/wizard/e;

    return-object v0
.end method

.method private a(Lam/b;Z)V
    .registers 5

    new-instance v0, Lcom/google/googlenav/h;

    invoke-direct {v0, p1}, Lcom/google/googlenav/h;-><init>(Lam/b;)V

    invoke-virtual {v0, p2}, Lcom/google/googlenav/h;->a(Z)V

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/o;->a:Lcom/google/googlenav/ui/wizard/v;

    if-eqz v1, :cond_23

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/o;->a:Lcom/google/googlenav/ui/wizard/v;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/v;->d:Lcom/google/googlenav/ui/wizard/w;

    if-eqz v1, :cond_23

    const-string v1, "x"

    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/wizard/o;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/o;->a:Lcom/google/googlenav/ui/wizard/v;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/v;->d:Lcom/google/googlenav/ui/wizard/w;

    invoke-interface {v1, v0}, Lcom/google/googlenav/ui/wizard/w;->a(Lcom/google/googlenav/h;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/o;->a:Lcom/google/googlenav/ui/wizard/v;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/googlenav/ui/wizard/v;->d:Lcom/google/googlenav/ui/wizard/w;

    :cond_23
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/o;->a()V

    return-void
.end method

.method private a(Lcom/google/googlenav/ah;)V
    .registers 6

    const/4 v3, 0x1

    new-instance v0, Lcom/google/googlenav/aS;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/o;->a:Lcom/google/googlenav/ui/wizard/v;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/v;->c:LaJ/B;

    const/4 v2, -0x1

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/google/googlenav/aS;-><init>(LaJ/B;III)V

    new-instance v1, Lcom/google/googlenav/ui/wizard/q;

    invoke-direct {v1, p0, p1}, Lcom/google/googlenav/ui/wizard/q;-><init>(Lcom/google/googlenav/ui/wizard/o;Lcom/google/googlenav/ah;)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/aS;->a(Lcom/google/googlenav/aT;)V

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lat/h;->c(Lat/g;)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/o;Lam/b;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/wizard/o;->a(Lam/b;Z)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/o;Lcom/google/googlenav/ah;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/o;->a(Lcom/google/googlenav/ah;)V

    return-void
.end method


# virtual methods
.method public W_()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/o;->a:Lcom/google/googlenav/ui/wizard/v;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/o;->a:Lcom/google/googlenav/ui/wizard/v;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/o;->a()V

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/o;->a(Lcom/google/googlenav/ui/wizard/v;)V

    return-void
.end method

.method public a(Laq/b;)I
    .registers 4

    invoke-virtual {p1}, Laq/b;->c()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_e

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/o;->o()V

    iget v0, p0, Lcom/google/googlenav/ui/wizard/o;->e:I

    :goto_d
    return v0

    :cond_e
    iget v0, p0, Lcom/google/googlenav/ui/wizard/o;->e:I

    goto :goto_d
.end method

.method public a(Laq/c;)I
    .registers 3

    iget v0, p0, Lcom/google/googlenav/ui/wizard/o;->e:I

    return v0
.end method

.method public a(Lam/b;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/ui/wizard/o;->a(Lam/b;Z)V

    return-void
.end method

.method public a(Lcom/google/googlenav/ui/wizard/v;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/o;->a:Lcom/google/googlenav/ui/wizard/v;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/o;->l()V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 4

    const/16 v0, 0x66

    const-string v1, "a"

    invoke-static {v0, v1, p1}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method protected b()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/o;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->j()V

    new-instance v0, Lcom/google/googlenav/ui/wizard/e;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/wizard/e;-><init>(Lcom/google/googlenav/ui/wizard/o;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/o;->g:Lcom/google/googlenav/ui/wizard/e;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/o;->g:Lcom/google/googlenav/ui/wizard/e;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/e;->show()V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/o;->g:Lcom/google/googlenav/ui/wizard/e;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/e;->h()V

    return-void
.end method

.method protected c()V
    .registers 3

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/google/googlenav/ui/wizard/z;->c()V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/o;->a:Lcom/google/googlenav/ui/wizard/v;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/o;->a:Lcom/google/googlenav/ui/wizard/v;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/v;->d:Lcom/google/googlenav/ui/wizard/w;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/o;->a:Lcom/google/googlenav/ui/wizard/v;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/v;->d:Lcom/google/googlenav/ui/wizard/w;

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/w;->a()V

    :cond_15
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/o;->g:Lcom/google/googlenav/ui/wizard/e;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/o;->g:Lcom/google/googlenav/ui/wizard/e;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/e;->dismiss()V

    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/o;->g:Lcom/google/googlenav/ui/wizard/e;

    :cond_20
    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/o;->a:Lcom/google/googlenav/ui/wizard/v;

    return-void
.end method

.method public e()V
    .registers 9

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/o;->g:Lcom/google/googlenav/ui/wizard/e;

    if-nez v0, :cond_6

    :goto_5
    return-void

    :cond_6
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/o;->a:Lcom/google/googlenav/ui/wizard/v;

    if-eqz v0, :cond_6d

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/o;->a:Lcom/google/googlenav/ui/wizard/v;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/v;->d:Lcom/google/googlenav/ui/wizard/w;

    if-eqz v0, :cond_6d

    invoke-static {}, Lcom/google/googlenav/android/X;->a()Lcom/google/googlenav/android/X;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/X;->b()Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/o;->a:Lcom/google/googlenav/ui/wizard/v;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/v;->d:Lcom/google/googlenav/ui/wizard/w;

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/w;->a()V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/o;->a()V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/o;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->G()Lcom/google/googlenav/L;

    move-result-object v0

    const-string v1, "GO AWAY MONKEY"

    invoke-interface {v0, v1}, Lcom/google/googlenav/L;->b(Ljava/lang/String;)V

    goto :goto_5

    :cond_30
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/o;->a:Lcom/google/googlenav/ui/wizard/v;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/v;->b:Lcom/google/googlenav/aU;

    if-eqz v0, :cond_7d

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/o;->a:Lcom/google/googlenav/ui/wizard/v;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/v;->b:Lcom/google/googlenav/aU;

    invoke-virtual {v0}, Lcom/google/googlenav/aU;->e()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/o;->a:Lcom/google/googlenav/ui/wizard/v;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/v;->b:Lcom/google/googlenav/aU;

    invoke-virtual {v0}, Lcom/google/googlenav/aU;->d()Ljava/lang/String;

    move-result-object v5

    :goto_46
    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v7

    new-instance v0, Lax/m;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/o;->a:Lcom/google/googlenav/ui/wizard/v;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/v;->c:LaJ/B;

    invoke-virtual {v1}, LaJ/B;->c()I

    move-result v1

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/o;->a:Lcom/google/googlenav/ui/wizard/v;

    iget-object v2, v2, Lcom/google/googlenav/ui/wizard/v;->c:LaJ/B;

    invoke-virtual {v2}, LaJ/B;->e()I

    move-result v2

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/o;->g:Lcom/google/googlenav/ui/wizard/e;

    invoke-virtual {v3}, Lcom/google/googlenav/ui/wizard/e;->i()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Lcom/google/googlenav/ui/wizard/p;

    invoke-direct {v6, p0}, Lcom/google/googlenav/ui/wizard/p;-><init>(Lcom/google/googlenav/ui/wizard/o;)V

    invoke-direct/range {v0 .. v6}, Lax/m;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lax/n;)V

    invoke-virtual {v7, v0}, Lat/h;->c(Lat/g;)V

    :cond_6d
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/o;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->G()Lcom/google/googlenav/L;

    move-result-object v0

    const/16 v1, 0x24

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/L;->a(Ljava/lang/String;)V

    goto :goto_5

    :cond_7d
    move-object v4, v5

    goto :goto_46
.end method

.method public f()V
    .registers 3

    const-string v0, "l"

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/o;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/o;->g:Lcom/google/googlenav/ui/wizard/e;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/e;->hide()V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/o;->a:Lcom/google/googlenav/ui/wizard/v;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/v;->d:Lcom/google/googlenav/ui/wizard/w;

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/w;->b()V

    new-instance v0, Lcom/google/googlenav/ui/wizard/cZ;

    invoke-direct {v0}, Lcom/google/googlenav/ui/wizard/cZ;-><init>()V

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/cZ;->a(I)Lcom/google/googlenav/ui/wizard/cZ;

    const/16 v1, 0x423

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/cZ;->a(Ljava/lang/String;)Lcom/google/googlenav/ui/wizard/cZ;

    new-instance v1, Lcom/google/googlenav/ui/wizard/r;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/wizard/r;-><init>(Lcom/google/googlenav/ui/wizard/o;)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/cZ;->a(Lcom/google/googlenav/ui/wizard/cR;)Lcom/google/googlenav/ui/wizard/cZ;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/o;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/wizard/hM;->a(Lcom/google/googlenav/ui/wizard/cZ;)V

    return-void
.end method

.method public g()V
    .registers 2

    const-string v0, "c"

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/o;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/o;->a()V

    return-void
.end method

.method public h()V
    .registers 8

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/o;->g:Lcom/google/googlenav/ui/wizard/e;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/e;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Las/b;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/o;->b:Lcom/google/googlenav/ui/wizard/hM;

    const/16 v1, 0x26

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x29

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2b5

    invoke-static {v3}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    new-instance v6, Lcom/google/googlenav/ui/wizard/s;

    invoke-direct {v6, p0}, Lcom/google/googlenav/ui/wizard/s;-><init>(Lcom/google/googlenav/ui/wizard/o;)V

    invoke-virtual/range {v0 .. v6}, Lcom/google/googlenav/ui/wizard/hM;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/google/googlenav/ui/wizard/aX;)V

    :goto_2a
    return-void

    :cond_2b
    const-string v0, "a"

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/o;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/o;->a:Lcom/google/googlenav/ui/wizard/v;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/v;->c:LaJ/B;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/o;->g:Lcom/google/googlenav/ui/wizard/e;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/e;->i()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/ui/wizard/t;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/wizard/t;-><init>(Lcom/google/googlenav/ui/wizard/o;)V

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/ui/wizard/n;->a(LaJ/B;Ljava/lang/String;Lax/bn;)Lax/bm;

    move-result-object v2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/o;->b:Lcom/google/googlenav/ui/wizard/hM;

    const/16 v1, 0x2b

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/google/googlenav/ui/wizard/x;->a:Lcom/google/googlenav/ui/wizard/y;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/google/googlenav/ui/wizard/hM;->a(Ljava/lang/String;Lat/d;Lcom/google/googlenav/ui/wizard/y;JZ)V

    goto :goto_2a
.end method

.method public o()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/o;->g:Lcom/google/googlenav/ui/wizard/e;

    if-eqz v0, :cond_15

    sget-object v0, Lcom/google/googlenav/ui/wizard/u;->a:[I

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/o;->g:Lcom/google/googlenav/ui/wizard/e;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/e;->m()Lcom/google/googlenav/ui/wizard/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/k;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_24

    :cond_15
    const-string v0, "b"

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/o;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/o;->a()V

    :goto_1d
    return-void

    :pswitch_1e
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/o;->g:Lcom/google/googlenav/ui/wizard/e;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/e;->h()V

    goto :goto_1d

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_1e
    .end packed-switch
.end method
