.class public Lax/aF;
.super Lat/a;


# instance fields
.field private a:LaJ/B;

.field private b:Lam/b;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:J

.field private i:I

.field private j:Z

.field private k:J

.field private l:F

.field private m:F

.field private n:D

.field private o:I

.field private p:Lam/b;

.field private q:Ljava/lang/Boolean;

.field private r:Ljava/lang/Boolean;

.field private s:Lax/aE;

.field private t:Lcom/google/googlenav/android/ac;

.field private u:Lax/aH;

.field private v:Lam/b;


# direct methods
.method public constructor <init>(Lax/aG;)V
    .registers 4

    const/high16 v0, -0x4080

    invoke-direct {p0}, Lat/a;-><init>()V

    iput v0, p0, Lax/aF;->l:F

    iput v0, p0, Lax/aF;->m:F

    const-wide/high16 v0, -0x4010

    iput-wide v0, p0, Lax/aF;->n:D

    const/4 v0, -0x1

    iput v0, p0, Lax/aF;->o:I

    invoke-static {p1}, Lax/aG;->a(Lax/aG;)LaJ/B;

    move-result-object v0

    iput-object v0, p0, Lax/aF;->a:LaJ/B;

    invoke-static {p1}, Lax/aG;->b(Lax/aG;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lax/aF;->c:Ljava/lang/String;

    invoke-static {p1}, Lax/aG;->c(Lax/aG;)I

    move-result v0

    iput v0, p0, Lax/aF;->d:I

    invoke-static {p1}, Lax/aG;->d(Lax/aG;)Lam/b;

    move-result-object v0

    iput-object v0, p0, Lax/aF;->b:Lam/b;

    invoke-static {p1}, Lax/aG;->e(Lax/aG;)Z

    move-result v0

    iput-boolean v0, p0, Lax/aF;->e:Z

    invoke-static {p1}, Lax/aG;->f(Lax/aG;)J

    move-result-wide v0

    iput-wide v0, p0, Lax/aF;->h:J

    invoke-static {p1}, Lax/aG;->g(Lax/aG;)I

    move-result v0

    iput v0, p0, Lax/aF;->i:I

    invoke-static {p1}, Lax/aG;->h(Lax/aG;)Z

    move-result v0

    iput-boolean v0, p0, Lax/aF;->g:Z

    invoke-static {p1}, Lax/aG;->i(Lax/aG;)Lax/aE;

    move-result-object v0

    iput-object v0, p0, Lax/aF;->s:Lax/aE;

    invoke-static {p1}, Lax/aG;->j(Lax/aG;)Lcom/google/googlenav/android/ac;

    move-result-object v0

    iput-object v0, p0, Lax/aF;->t:Lcom/google/googlenav/android/ac;

    invoke-static {p1}, Lax/aG;->k(Lax/aG;)Lax/aH;

    move-result-object v0

    iput-object v0, p0, Lax/aF;->u:Lax/aH;

    invoke-static {p1}, Lax/aG;->l(Lax/aG;)Z

    move-result v0

    iput-boolean v0, p0, Lax/aF;->j:Z

    invoke-static {p1}, Lax/aG;->m(Lax/aG;)J

    move-result-wide v0

    iput-wide v0, p0, Lax/aF;->k:J

    invoke-static {p1}, Lax/aG;->n(Lax/aG;)I

    move-result v0

    iput v0, p0, Lax/aF;->o:I

    invoke-static {p1}, Lax/aG;->o(Lax/aG;)F

    move-result v0

    iput v0, p0, Lax/aF;->l:F

    invoke-static {p1}, Lax/aG;->p(Lax/aG;)F

    move-result v0

    iput v0, p0, Lax/aF;->m:F

    invoke-static {p1}, Lax/aG;->q(Lax/aG;)D

    move-result-wide v0

    iput-wide v0, p0, Lax/aF;->n:D

    invoke-static {p1}, Lax/aG;->r(Lax/aG;)Lam/b;

    move-result-object v0

    iput-object v0, p0, Lax/aF;->p:Lam/b;

    invoke-static {p1}, Lax/aG;->s(Lax/aG;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lax/aF;->q:Ljava/lang/Boolean;

    invoke-static {p1}, Lax/aG;->t(Lax/aG;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lax/aF;->r:Ljava/lang/Boolean;

    return-void
.end method

.method private a(Lam/b;)V
    .registers 5

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lam/b;->k(I)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-boolean v0, p0, Lax/aF;->e:Z

    if-nez v0, :cond_1b

    iget-boolean v0, p0, Lax/aF;->g:Z

    if-nez v0, :cond_1b

    new-instance v0, Lax/aC;

    iget-object v1, p0, Lax/aF;->t:Lcom/google/googlenav/android/ac;

    iget-object v2, p0, Lax/aF;->s:Lax/aE;

    invoke-direct {v0, v1, v2}, Lax/aC;-><init>(Lcom/google/googlenav/android/ac;Lax/aE;)V

    invoke-virtual {v0, p1}, Lax/aC;->a(Lam/b;)V

    :cond_1b
    return-void
.end method

.method private k()V
    .registers 7

    const/4 v4, 0x2

    const/high16 v5, -0x4080

    const/4 v0, 0x1

    new-instance v1, Lam/b;

    sget-object v2, LbD/bx;->d:Lam/e;

    invoke-direct {v1, v2}, Lam/b;-><init>(Lam/e;)V

    iput-object v1, p0, Lax/aF;->v:Lam/b;

    new-instance v1, Lam/b;

    sget-object v2, LbD/cO;->d:Lam/e;

    invoke-direct {v1, v2}, Lam/b;-><init>(Lam/e;)V

    new-instance v2, Lam/b;

    sget-object v3, LbD/cO;->a:Lam/e;

    invoke-direct {v2, v3}, Lam/b;-><init>(Lam/e;)V

    iget-object v3, p0, Lax/aF;->a:LaJ/B;

    invoke-virtual {v3}, LaJ/B;->c()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lam/b;->h(II)V

    iget-object v3, p0, Lax/aF;->a:LaJ/B;

    invoke-virtual {v3}, LaJ/B;->e()I

    move-result v3

    invoke-virtual {v2, v4, v3}, Lam/b;->h(II)V

    invoke-virtual {v1, v0, v0}, Lam/b;->h(II)V

    invoke-virtual {v1, v4, v2}, Lam/b;->b(ILam/b;)V

    iget-object v2, p0, Lax/aF;->v:Lam/b;

    invoke-virtual {v2, v0, v1}, Lam/b;->b(ILam/b;)V

    iget v1, p0, Lax/aF;->d:I

    const v2, 0x1869f

    if-eq v1, v2, :cond_46

    iget-object v1, p0, Lax/aF;->v:Lam/b;

    iget v2, p0, Lax/aF;->d:I

    invoke-virtual {v1, v4, v2}, Lam/b;->h(II)V

    :cond_46
    iget-object v1, p0, Lax/aF;->b:Lam/b;

    if-eqz v1, :cond_53

    iget-object v1, p0, Lax/aF;->v:Lam/b;

    const/16 v2, 0x9

    iget-object v3, p0, Lax/aF;->b:Lam/b;

    invoke-virtual {v1, v2, v3}, Lam/b;->b(ILam/b;)V

    :cond_53
    iget-object v1, p0, Lax/aF;->v:Lam/b;

    const/4 v2, 0x3

    iget-object v3, p0, Lax/aF;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lam/b;->b(ILjava/lang/String;)V

    iget-object v1, p0, Lax/aF;->v:Lam/b;

    const/16 v2, 0xa

    iget-boolean v3, p0, Lax/aF;->j:Z

    invoke-virtual {v1, v2, v3}, Lam/b;->b(IZ)V

    iget-object v1, p0, Lax/aF;->v:Lam/b;

    const/16 v2, 0xb

    iget-wide v3, p0, Lax/aF;->k:J

    invoke-virtual {v1, v2, v3, v4}, Lam/b;->b(IJ)V

    iget-object v1, p0, Lax/aF;->v:Lam/b;

    const/4 v2, 0x4

    iget-boolean v3, p0, Lax/aF;->e:Z

    invoke-virtual {v1, v2, v3}, Lam/b;->b(IZ)V

    iget-object v1, p0, Lax/aF;->v:Lam/b;

    const/16 v2, 0x8

    iget-boolean v3, p0, Lax/aF;->f:Z

    if-nez v3, :cond_11e

    :goto_7d
    invoke-virtual {v1, v2, v0}, Lam/b;->b(IZ)V

    iget-wide v0, p0, Lax/aF;->h:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_90

    iget-object v0, p0, Lax/aF;->v:Lam/b;

    const/4 v1, 0x5

    iget-wide v2, p0, Lax/aF;->h:J

    invoke-virtual {v0, v1, v2, v3}, Lam/b;->b(IJ)V

    :cond_90
    iget-object v0, p0, Lax/aF;->v:Lam/b;

    const/4 v1, 0x7

    iget v2, p0, Lax/aF;->i:I

    invoke-virtual {v0, v1, v2}, Lam/b;->h(II)V

    iget-object v0, p0, Lax/aF;->v:Lam/b;

    const/16 v1, 0xd

    iget-object v2, p0, Lax/aF;->a:LaJ/B;

    invoke-virtual {v2}, LaJ/B;->d()I

    move-result v2

    iget-object v3, p0, Lax/aF;->a:LaJ/B;

    invoke-virtual {v3}, LaJ/B;->f()I

    move-result v3

    invoke-static {v2, v3}, LaE/d;->a(II)Lam/b;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lam/b;->b(ILam/b;)V

    iget v0, p0, Lax/aF;->l:F

    cmpl-float v0, v0, v5

    if-eqz v0, :cond_be

    iget-object v0, p0, Lax/aF;->v:Lam/b;

    const/16 v1, 0xe

    iget v2, p0, Lax/aF;->l:F

    invoke-virtual {v0, v1, v2}, Lam/b;->a(IF)V

    :cond_be
    iget v0, p0, Lax/aF;->m:F

    cmpl-float v0, v0, v5

    if-eqz v0, :cond_cd

    iget-object v0, p0, Lax/aF;->v:Lam/b;

    const/16 v1, 0xf

    iget v2, p0, Lax/aF;->m:F

    invoke-virtual {v0, v1, v2}, Lam/b;->a(IF)V

    :cond_cd
    iget-wide v0, p0, Lax/aF;->n:D

    const-wide/high16 v2, -0x4010

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_de

    iget-object v0, p0, Lax/aF;->v:Lam/b;

    const/16 v1, 0x10

    iget-wide v2, p0, Lax/aF;->n:D

    invoke-virtual {v0, v1, v2, v3}, Lam/b;->a(ID)V

    :cond_de
    iget-object v0, p0, Lax/aF;->p:Lam/b;

    if-eqz v0, :cond_eb

    iget-object v0, p0, Lax/aF;->v:Lam/b;

    const/16 v1, 0x11

    iget-object v2, p0, Lax/aF;->p:Lam/b;

    invoke-virtual {v0, v1, v2}, Lam/b;->b(ILam/b;)V

    :cond_eb
    iget-object v0, p0, Lax/aF;->q:Ljava/lang/Boolean;

    if-eqz v0, :cond_fc

    iget-object v0, p0, Lax/aF;->v:Lam/b;

    const/16 v1, 0x13

    iget-object v2, p0, Lax/aF;->q:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lam/b;->b(IZ)V

    :cond_fc
    iget-object v0, p0, Lax/aF;->r:Ljava/lang/Boolean;

    if-eqz v0, :cond_10d

    iget-object v0, p0, Lax/aF;->v:Lam/b;

    const/16 v1, 0x14

    iget-object v2, p0, Lax/aF;->r:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lam/b;->b(IZ)V

    :cond_10d
    iget v0, p0, Lax/aF;->o:I

    int-to-float v0, v0

    cmpl-float v0, v0, v5

    if-eqz v0, :cond_11d

    iget-object v0, p0, Lax/aF;->v:Lam/b;

    const/16 v1, 0x12

    iget v2, p0, Lax/aF;->o:I

    invoke-virtual {v0, v1, v2}, Lam/b;->h(II)V

    :cond_11d
    return-void

    :cond_11e
    const/4 v0, 0x0

    goto/16 :goto_7d
.end method


# virtual methods
.method public a()I
    .registers 2

    const/16 v0, 0x20

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 3

    iget-object v0, p0, Lax/aF;->v:Lam/b;

    if-nez v0, :cond_7

    invoke-direct {p0}, Lax/aF;->k()V

    :cond_7
    iget-object v0, p0, Lax/aF;->v:Lam/b;

    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Lam/b;->a(Ljava/io/OutputStream;)V

    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 7

    const/4 v4, -0x1

    const/4 v1, 0x1

    sget-object v0, LbD/bx;->e:Lam/e;

    invoke-static {v0, p1}, Lam/g;->a(Lam/e;Ljava/io/DataInput;)Lam/b;

    move-result-object v2

    invoke-static {v2, v1, v4}, Lam/g;->c(Lam/b;II)I

    move-result v0

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lam/b;->h(I)Lam/b;

    move-result-object v3

    invoke-static {v3, v1, v4}, Lam/g;->c(Lam/b;II)I

    move-result v3

    packed-switch v0, :pswitch_data_38

    :goto_18
    invoke-static {}, Lcom/google/googlenav/login/g;->j()Lcom/google/googlenav/login/g;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/googlenav/login/g;->a(I)V

    :goto_1f
    if-nez v0, :cond_36

    move v0, v1

    :goto_22
    iget-object v3, p0, Lax/aF;->u:Lax/aH;

    if-eqz v3, :cond_2d

    iget-object v3, p0, Lax/aF;->u:Lax/aH;

    iget-object v4, p0, Lax/aF;->v:Lam/b;

    invoke-interface {v3, v2, v0, v4}, Lax/aH;->a(Lam/b;ZLam/b;)V

    :cond_2d
    return v1

    :pswitch_2e
    invoke-direct {p0, v2}, Lax/aF;->a(Lam/b;)V

    goto :goto_1f

    :pswitch_32
    invoke-direct {p0, v2}, Lax/aF;->a(Lam/b;)V

    goto :goto_18

    :cond_36
    const/4 v0, 0x0

    goto :goto_22

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_2e
        :pswitch_32
    .end packed-switch
.end method

.method public c_()Z
    .registers 6

    const/4 v0, 0x0

    iget-wide v1, p0, Lax/aF;->h:J

    const-wide/32 v3, 0x1d4c0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_b

    :cond_a
    :goto_a
    return v0

    :cond_b
    invoke-virtual {p0}, Lax/aF;->aL()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_a

    const/4 v0, 0x1

    goto :goto_a
.end method

.method public z_()Z
    .registers 2

    iget-boolean v0, p0, Lax/aF;->j:Z

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
