.class public La/f;
.super La/a;


# instance fields
.field g:J

.field h:F

.field i:Z

.field j:La/h;

.field k:Z

.field l:Ljava/util/ArrayList;

.field m:Z

.field n:Li/B;

.field o:J

.field p:Le/L;

.field q:Z

.field r:LW/a;

.field s:J

.field t:Le/L;

.field u:J


# direct methods
.method public constructor <init>(Li/E;Lc/m;La/G;La/d;)V
    .registers 15

    const-wide/16 v8, -0x1

    const/4 v7, 0x0

    const-string v1, "ActiveCollector"

    sget-object v6, La/e;->a:La/e;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, La/a;-><init>(Ljava/lang/String;Li/E;Lc/m;La/G;La/d;La/e;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, La/f;->g:J

    const/4 v0, 0x0

    iput v0, p0, La/f;->h:F

    iput-boolean v7, p0, La/f;->i:Z

    sget-object v0, La/h;->a:La/h;

    iput-object v0, p0, La/f;->j:La/h;

    iput-boolean v7, p0, La/f;->k:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, La/f;->l:Ljava/util/ArrayList;

    iput-boolean v7, p0, La/f;->m:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, La/f;->q:Z

    iput-wide v8, p0, La/f;->s:J

    iput-wide v8, p0, La/f;->u:J

    invoke-interface {p1}, Li/E;->a()J

    move-result-wide v0

    const-wide/32 v2, 0xa4cb80

    add-long/2addr v0, v2

    const-wide/32 v2, 0x112a880

    sub-long/2addr v0, v2

    iput-wide v0, p0, La/f;->g:J

    return-void
.end method

.method private b(Li/B;Le/b;Le/L;ZI)LW/a;
    .registers 9

    invoke-virtual/range {p0 .. p5}, La/f;->a(Li/B;Le/b;Le/L;ZI)LW/a;

    move-result-object v0

    new-instance v1, LW/a;

    sget-object v2, Lk/a;->ap:LW/d;

    invoke-direct {v1, v2}, LW/a;-><init>(LW/d;)V

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, LW/a;->a(ILW/a;)V

    iget-object v0, p0, La/f;->d:La/G;

    iget-object v2, p0, La/f;->b:Li/E;

    invoke-virtual {v0, v2, v1}, La/G;->a(Li/E;LW/a;)V

    return-object v1
.end method

.method private b(Li/B;)Z
    .registers 4

    invoke-interface {p1}, Li/B;->a()F

    move-result v0

    const/high16 v1, 0x4220

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_16

    invoke-interface {p1}, Li/B;->e()F

    move-result v0

    const/high16 v1, 0x3fc0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private e()V
    .registers 3

    sget-object v0, La/e;->a:La/e;

    iput-object v0, p0, La/f;->f:La/e;

    iget-object v0, p0, La/f;->j:La/h;

    sget-object v1, La/h;->a:La/h;

    if-eq v0, v1, :cond_28

    iget-object v0, p0, La/f;->j:La/h;

    sget-object v1, La/h;->b:La/h;

    if-ne v0, v1, :cond_16

    iget-object v0, p0, La/f;->b:Li/E;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Li/E;->a(Z)V

    :cond_16
    iget-object v0, p0, La/f;->b:Li/E;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Li/E;->c(I)V

    sget-object v0, La/h;->a:La/h;

    iput-object v0, p0, La/f;->j:La/h;

    iget-object v0, p0, La/f;->b:Li/E;

    invoke-interface {v0}, Li/E;->a()J

    move-result-wide v0

    iput-wide v0, p0, La/f;->g:J

    :cond_28
    invoke-direct {p0}, La/f;->f()V

    const/4 v0, 0x0

    iput-object v0, p0, La/f;->p:Le/L;

    return-void
.end method

.method private f()V
    .registers 2

    iget-object v0, p0, La/f;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, La/f;->m:Z

    const/4 v0, 0x0

    iput-object v0, p0, La/f;->n:Li/B;

    return-void
.end method

.method private i(J)V
    .registers 7

    iget-wide v0, p0, La/f;->u:J

    cmp-long v0, p1, v0

    if-eqz v0, :cond_10

    iput-wide p1, p0, La/f;->u:J

    iget-object v0, p0, La/f;->b:Li/E;

    const/4 v1, 0x1

    iget-wide v2, p0, La/f;->u:J

    invoke-interface {v0, v1, v2, v3}, Li/E;->a(IJ)V

    :cond_10
    return-void
.end method

.method private j(J)Z
    .registers 9

    const-wide/32 v4, 0x1d4c0

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-object v2, La/g;->a:[I

    iget-object v3, p0, La/f;->f:La/e;

    invoke-virtual {v3}, La/e;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_4a

    :cond_12
    :goto_12
    return v1

    :pswitch_13
    iget-wide v2, p0, La/f;->g:J

    sub-long v2, p1, v2

    cmp-long v2, v4, v2

    if-lez v2, :cond_1d

    :goto_1b
    move v1, v0

    goto :goto_12

    :cond_1d
    move v0, v1

    goto :goto_1b

    :pswitch_1f
    iget-boolean v2, p0, La/f;->m:Z

    if-eqz v2, :cond_12

    :pswitch_23
    iget-object v2, p0, La/f;->b:Li/E;

    invoke-interface {v2}, Li/E;->l()Z

    move-result v2

    if-eqz v2, :cond_12

    iget-wide v2, p0, La/f;->g:J

    sub-long v2, p1, v2

    cmp-long v2, v4, v2

    if-lez v2, :cond_12

    :pswitch_33
    iget-boolean v2, p0, La/f;->k:Z

    if-eqz v2, :cond_47

    iget-boolean v2, p0, La/f;->q:Z

    if-nez v2, :cond_47

    iget-object v2, p0, La/f;->r:LW/a;

    if-nez v2, :cond_47

    invoke-virtual {p0}, La/f;->d()Z

    move-result v2

    if-eqz v2, :cond_47

    :goto_45
    move v1, v0

    goto :goto_12

    :cond_47
    move v0, v1

    goto :goto_45

    nop

    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_13
        :pswitch_1f
        :pswitch_1f
        :pswitch_23
        :pswitch_33
        :pswitch_33
    .end packed-switch
.end method


# virtual methods
.method a(I)V
    .registers 4

    const/4 v0, 0x1

    if-ne p1, v0, :cond_7

    const-wide/16 v0, -0x1

    iput-wide v0, p0, La/f;->u:J

    :cond_7
    return-void
.end method

.method a(IIZ)V
    .registers 6

    iput-boolean p3, p0, La/f;->i:Z

    invoke-static {p1, p2}, Ll/b;->a(II)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_d

    iput v0, p0, La/f;->h:F

    :cond_d
    return-void
.end method

.method a(LW/a;)V
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, La/f;->r:LW/a;

    return-void
.end method

.method a(Le/L;)V
    .registers 8

    iget-object v0, p0, La/f;->f:La/e;

    sget-object v1, La/e;->d:La/e;

    if-ne v0, v1, :cond_16

    const-wide/16 v0, 0x3e8

    iget-wide v2, p1, Le/L;->a:J

    iget-wide v4, p0, La/f;->o:J

    sub-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_17

    iget-object v0, p0, La/f;->b:Li/E;

    invoke-interface {v0}, Li/E;->m()V

    :cond_16
    :goto_16
    return-void

    :cond_17
    iput-object p1, p0, La/f;->p:Le/L;

    goto :goto_16
.end method

.method a(Le/b;)V
    .registers 2

    return-void
.end method

.method a(Li/B;)V
    .registers 6

    const/16 v3, 0xa

    const/4 v2, 0x0

    sget-object v0, La/g;->a:[I

    iget-object v1, p0, La/f;->f:La/e;

    invoke-virtual {v1}, La/e;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_80

    :cond_10
    :goto_10
    :pswitch_10
    return-void

    :pswitch_11
    invoke-direct {p0, p1}, La/f;->b(Li/B;)Z

    move-result v0

    if-nez v0, :cond_27

    invoke-direct {p0}, La/f;->f()V

    :goto_1a
    iget-object v0, p0, La/f;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_10

    const/4 v0, 0x1

    iput-boolean v0, p0, La/f;->m:Z

    goto :goto_10

    :cond_27
    iget-object v0, p0, La/f;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3d

    iget-object v0, p0, La/f;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li/B;

    invoke-static {v0, p1, v3}, La/f;->a(Li/B;Li/B;I)Z

    move-result v0

    if-eqz v0, :cond_43

    :cond_3d
    iget-object v0, p0, La/f;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    :cond_43
    invoke-direct {p0}, La/f;->f()V

    iget-object v0, p0, La/f;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    :pswitch_4c
    invoke-direct {p0, p1}, La/f;->b(Li/B;)Z

    move-result v0

    if-eqz v0, :cond_60

    iget-object v0, p0, La/f;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li/B;

    invoke-static {v0, p1, v3}, La/f;->a(Li/B;Li/B;I)Z

    move-result v0

    if-nez v0, :cond_10

    :cond_60
    invoke-direct {p0}, La/f;->f()V

    goto :goto_10

    :pswitch_64
    invoke-direct {p0, p1}, La/f;->b(Li/B;)Z

    move-result v0

    if-eqz v0, :cond_78

    iget-object v0, p0, La/f;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li/B;

    invoke-static {v0, p1, v3}, La/f;->a(Li/B;Li/B;I)Z

    move-result v0

    if-nez v0, :cond_7c

    :cond_78
    invoke-direct {p0}, La/f;->f()V

    goto :goto_10

    :cond_7c
    iput-object p1, p0, La/f;->n:Li/B;

    goto :goto_10

    nop

    :pswitch_data_80
    .packed-switch 0x2
        :pswitch_64
        :pswitch_4c
        :pswitch_11
        :pswitch_10
        :pswitch_10
    .end packed-switch
.end method

.method a(Li/C;)V
    .registers 2

    return-void
.end method

.method a(Z)V
    .registers 3

    iget-boolean v0, p0, La/f;->k:Z

    if-eq v0, p1, :cond_6

    iput-boolean p1, p0, La/f;->k:Z

    :cond_6
    return-void
.end method

.method protected a(J)Z
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, La/f;->j(J)Z

    move-result v1

    if-eqz v1, :cond_c

    sget-object v0, La/e;->b:La/e;

    iput-object v0, p0, La/f;->f:La/e;

    const/4 v0, 0x1

    :cond_c
    return v0
.end method

.method b(I)V
    .registers 2

    return-void
.end method

.method b(Z)V
    .registers 2

    iput-boolean p1, p0, La/f;->q:Z

    return-void
.end method

.method protected b(J)Z
    .registers 9

    const-wide/32 v4, 0x112a880

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, La/f;->j(J)Z

    move-result v2

    if-nez v2, :cond_f

    invoke-direct {p0}, La/f;->e()V

    :goto_e
    return v0

    :cond_f
    iget-wide v2, p0, La/f;->g:J

    sub-long v2, p1, v2

    cmp-long v2, v4, v2

    if-gtz v2, :cond_32

    iget-object v1, p0, La/f;->b:Li/E;

    invoke-interface {v1, v0}, Li/E;->b(I)V

    sget-object v1, La/h;->b:La/h;

    iput-object v1, p0, La/f;->j:La/h;

    iget-object v1, p0, La/f;->b:Li/E;

    invoke-interface {v1}, Li/E;->a()J

    move-result-wide v1

    iput-wide v1, p0, La/f;->g:J

    iget-object v1, p0, La/f;->b:Li/E;

    invoke-interface {v1, v0}, Li/E;->a(Z)V

    sget-object v1, La/e;->c:La/e;

    iput-object v1, p0, La/f;->f:La/e;

    goto :goto_e

    :cond_32
    iget-wide v2, p0, La/f;->g:J

    add-long/2addr v2, v4

    invoke-direct {p0, v2, v3}, La/f;->i(J)V

    move v0, v1

    goto :goto_e
.end method

.method public bridge synthetic c()V
    .registers 1

    invoke-super {p0}, La/a;->c()V

    return-void
.end method

.method c(Z)V
    .registers 2

    return-void
.end method

.method protected c(J)Z
    .registers 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, La/f;->j(J)Z

    move-result v2

    if-nez v2, :cond_c

    invoke-direct {p0}, La/f;->e()V

    :goto_b
    return v0

    :cond_c
    iget-boolean v2, p0, La/f;->m:Z

    if-eqz v2, :cond_1c

    iput-wide p1, p0, La/f;->o:J

    iget-object v1, p0, La/f;->b:Li/E;

    invoke-interface {v1}, Li/E;->m()V

    sget-object v1, La/e;->d:La/e;

    iput-object v1, p0, La/f;->f:La/e;

    goto :goto_b

    :cond_1c
    iget-wide v2, p0, La/f;->g:J

    const-wide/32 v4, 0x1d4c0

    add-long/2addr v2, v4

    invoke-direct {p0, v2, v3}, La/f;->i(J)V

    move v0, v1

    goto :goto_b
.end method

.method d()Z
    .registers 3

    iget v1, p0, La/f;->h:F

    iget-boolean v0, p0, La/f;->i:Z

    if-eqz v0, :cond_f

    const v0, 0x3e99999a

    :goto_9
    cmpl-float v0, v1, v0

    if-ltz v0, :cond_13

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const v0, 0x3f333333

    goto :goto_9

    :cond_13
    const/4 v0, 0x0

    goto :goto_e
.end method

.method protected d(J)Z
    .registers 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, La/f;->j(J)Z

    move-result v2

    if-nez v2, :cond_c

    invoke-direct {p0}, La/f;->e()V

    :goto_b
    return v0

    :cond_c
    iget-object v2, p0, La/f;->p:Le/L;

    if-eqz v2, :cond_15

    sget-object v1, La/e;->e:La/e;

    iput-object v1, p0, La/f;->f:La/e;

    goto :goto_b

    :cond_15
    iget-wide v2, p0, La/f;->g:J

    const-wide/32 v4, 0x1d4c0

    add-long/2addr v2, v4

    invoke-direct {p0, v2, v3}, La/f;->i(J)V

    move v0, v1

    goto :goto_b
.end method

.method protected e(J)Z
    .registers 11

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, La/f;->j(J)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-direct {p0}, La/f;->e()V

    :goto_c
    return v6

    :cond_d
    iget-object v0, p0, La/f;->n:Li/B;

    if-eqz v0, :cond_4a

    iget-object v1, p0, La/f;->n:Li/B;

    iget-object v3, p0, La/f;->p:Le/L;

    iget-boolean v4, p0, La/f;->i:Z

    const/16 v5, 0xd

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, La/f;->b(Li/B;Le/b;Le/L;ZI)LW/a;

    move-result-object v0

    iput-object v0, p0, La/f;->r:LW/a;

    iput-wide p1, p0, La/f;->s:J

    iget-object v0, p0, La/f;->p:Le/L;

    iput-object v0, p0, La/f;->t:Le/L;

    iget-object v0, p0, La/f;->b:Li/E;

    iget-object v1, p0, La/f;->r:LW/a;

    invoke-static {v2}, Le/d;->a(Le/d;)LW/a;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Li/E;->b(LW/a;LW/a;)V

    iget-object v0, p0, La/f;->e:La/d;

    iget-object v1, p0, La/f;->n:Li/B;

    iget-object v3, p0, La/f;->p:Le/L;

    invoke-virtual {v0, v1, v2, v3}, La/d;->a(Li/B;Le/b;Le/L;)V

    sget-object v0, La/e;->f:La/e;

    iput-object v0, p0, La/f;->f:La/e;

    iget-object v0, p0, La/f;->b:Li/E;

    invoke-interface {v0, v7}, Li/E;->a(Z)V

    sget-object v0, La/h;->c:La/h;

    iput-object v0, p0, La/f;->j:La/h;

    move v0, v6

    :goto_48
    move v6, v0

    goto :goto_c

    :cond_4a
    iget-wide v0, p0, La/f;->g:J

    const-wide/32 v2, 0x1d4c0

    add-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, La/f;->i(J)V

    move v0, v7

    goto :goto_48
.end method

.method protected f(J)Z
    .registers 8

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, La/f;->j(J)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, La/f;->r:LW/a;

    if-nez v1, :cond_10

    :cond_b
    invoke-direct {p0}, La/f;->e()V

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    iget-wide v1, p0, La/f;->g:J

    const-wide/32 v3, 0x1d4c0

    add-long/2addr v1, v3

    invoke-direct {p0, v1, v2}, La/f;->i(J)V

    goto :goto_f
.end method
