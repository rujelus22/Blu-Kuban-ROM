.class public La/v;
.super La/a;


# instance fields
.field A:LW/a;

.field B:J

.field C:LW/a;

.field D:Lj/a;

.field E:Z

.field private final F:Ljava/util/Random;

.field g:Z

.field h:Z

.field i:Z

.field j:Le/b;

.field k:Le/L;

.field l:Z

.field m:Le/L;

.field n:Li/B;

.field o:Z

.field p:LW/a;

.field q:J

.field r:Z

.field s:Z

.field t:Z

.field u:Z

.field v:Z

.field w:J

.field x:J

.field y:Z

.field z:J


# direct methods
.method public constructor <init>(Li/E;Lc/m;La/G;La/d;Lj/a;)V
    .registers 13

    const-string v1, "PassiveCollector"

    sget-object v6, La/e;->b:La/e;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, La/a;-><init>(Ljava/lang/String;Li/E;Lc/m;La/G;La/d;La/e;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, La/v;->i:Z

    const/4 v0, 0x0

    iput-object v0, p0, La/v;->j:Le/b;

    const/4 v0, 0x0

    iput-object v0, p0, La/v;->k:Le/L;

    const/4 v0, 0x0

    iput-boolean v0, p0, La/v;->l:Z

    const/4 v0, 0x0

    iput-object v0, p0, La/v;->m:Le/L;

    const/4 v0, 0x0

    iput-boolean v0, p0, La/v;->o:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, La/v;->q:J

    const/4 v0, 0x0

    iput-boolean v0, p0, La/v;->r:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, La/v;->s:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, La/v;->t:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, La/v;->u:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, La/v;->v:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, La/v;->w:J

    const-wide/16 v0, -0x1

    iput-wide v0, p0, La/v;->x:J

    const/4 v0, 0x0

    iput-boolean v0, p0, La/v;->y:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, La/v;->z:J

    const-wide/16 v0, -0x1

    iput-wide v0, p0, La/v;->B:J

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, La/v;->F:Ljava/util/Random;

    iget-object v0, p2, Lc/m;->c:Li/C;

    invoke-virtual {p0, v0}, La/v;->a(Li/C;)V

    iput-object p5, p0, La/v;->D:Lj/a;

    return-void
.end method

.method private c(I)Z
    .registers 14

    const/4 v11, 0x2

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, La/v;->b:Li/E;

    invoke-interface {v0}, Li/E;->a()J

    move-result-wide v7

    iget-object v0, p0, La/v;->n:Li/B;

    if-eqz v0, :cond_5a

    iget-object v0, p0, La/v;->n:Li/B;

    invoke-interface {v0}, Li/B;->f()J

    move-result-wide v2

    sub-long v2, v7, v2

    const-wide/32 v9, 0xafc80

    cmp-long v0, v2, v9

    if-gtz v0, :cond_5a

    move v0, v6

    :goto_1e
    iget-object v2, p0, La/v;->m:Le/L;

    if-eqz v2, :cond_b9

    if-eq p1, v11, :cond_34

    iget-boolean v2, p0, La/v;->l:Z

    if-eqz v2, :cond_b9

    if-eqz v0, :cond_b9

    iget-object v2, p0, La/v;->m:Le/L;

    iget-object v3, p0, La/v;->n:Li/B;

    invoke-virtual {p0, v2, v3}, La/v;->a(Le/L;Li/B;)Z

    move-result v2

    if-eqz v2, :cond_b9

    :cond_34
    move v3, v6

    :goto_35
    iget-object v2, p0, La/v;->j:Le/b;

    if-eqz v2, :cond_b7

    if-nez v3, :cond_49

    if-eqz v0, :cond_b7

    iget-object v2, p0, La/v;->e:La/d;

    iget-object v5, p0, La/v;->j:Le/b;

    iget-object v9, p0, La/v;->n:Li/B;

    invoke-virtual {v2, v5, v9}, La/d;->a(Le/b;Li/B;)Z

    move-result v2

    if-nez v2, :cond_b7

    :cond_49
    move v5, v6

    :goto_4a
    if-eqz v0, :cond_5c

    move v2, v6

    :goto_4d
    add-int v9, v1, v2

    if-eqz v3, :cond_5e

    move v2, v6

    :goto_52
    add-int/2addr v9, v2

    if-eqz v5, :cond_60

    move v2, v6

    :goto_56
    add-int/2addr v2, v9

    if-ge v2, v11, :cond_62

    :cond_59
    :goto_59
    return v1

    :cond_5a
    move v0, v1

    goto :goto_1e

    :cond_5c
    move v2, v1

    goto :goto_4d

    :cond_5e
    move v2, v1

    goto :goto_52

    :cond_60
    move v2, v1

    goto :goto_56

    :cond_62
    if-nez v5, :cond_66

    if-eq p1, v6, :cond_59

    :cond_66
    if-eqz v3, :cond_71

    if-nez v0, :cond_6b

    move v1, v6

    :cond_6b
    iput-boolean v1, p0, La/v;->l:Z

    iget-object v1, p0, La/v;->m:Le/L;

    iput-object v1, p0, La/v;->k:Le/L;

    :cond_71
    if-eqz v0, :cond_b1

    iget-object v1, p0, La/v;->n:Li/B;

    :goto_75
    if-eqz v5, :cond_b3

    iget-object v2, p0, La/v;->j:Le/b;

    :goto_79
    if-eqz v3, :cond_b5

    iget-object v3, p0, La/v;->m:Le/L;

    :goto_7d
    iget-boolean v4, p0, La/v;->h:Z

    move-object v0, p0

    move v5, p1

    invoke-virtual/range {v0 .. v5}, La/v;->a(Li/B;Le/b;Le/L;ZI)LW/a;

    move-result-object v0

    iget-object v4, p0, La/v;->e:La/d;

    invoke-virtual {v4, v1, v2, v3}, La/d;->a(Li/B;Le/b;Le/L;)V

    iget-object v1, p0, La/v;->A:LW/a;

    if-nez v1, :cond_99

    new-instance v1, LW/a;

    sget-object v2, Lk/a;->ap:LW/d;

    invoke-direct {v1, v2}, LW/a;-><init>(LW/d;)V

    iput-object v1, p0, La/v;->A:LW/a;

    iput-wide v7, p0, La/v;->B:J

    :cond_99
    iget-object v1, p0, La/v;->A:LW/a;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, LW/a;->a(ILW/a;)V

    iget-object v0, p0, La/v;->j:Le/b;

    if-eqz v0, :cond_af

    iget-object v0, p0, La/v;->C:LW/a;

    if-nez v0, :cond_af

    iget-object v0, p0, La/v;->j:Le/b;

    invoke-virtual {v0}, Le/b;->m()LW/a;

    move-result-object v0

    iput-object v0, p0, La/v;->C:LW/a;

    :cond_af
    move v1, v6

    goto :goto_59

    :cond_b1
    move-object v1, v4

    goto :goto_75

    :cond_b3
    move-object v2, v4

    goto :goto_79

    :cond_b5
    move-object v3, v4

    goto :goto_7d

    :cond_b7
    move v5, v1

    goto :goto_4a

    :cond_b9
    move v3, v1

    goto/16 :goto_35
.end method

.method private e()V
    .registers 5

    const/4 v3, 0x0

    iget-object v0, p0, La/v;->b:Li/E;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Li/E;->b(I)V

    sget-object v0, La/e;->f:La/e;

    iput-object v0, p0, La/v;->f:La/e;

    iget-object v0, p0, La/v;->A:LW/a;

    iput-object v0, p0, La/v;->p:LW/a;

    iget-object v0, p0, La/v;->d:La/G;

    iget-object v1, p0, La/v;->b:Li/E;

    iget-object v2, p0, La/v;->p:LW/a;

    invoke-virtual {v0, v1, v2}, La/G;->a(Li/E;LW/a;)V

    iget-object v0, p0, La/v;->b:Li/E;

    iget-object v1, p0, La/v;->p:LW/a;

    iget-object v2, p0, La/v;->C:LW/a;

    invoke-interface {v0, v1, v2}, Li/E;->b(LW/a;LW/a;)V

    iput-object v3, p0, La/v;->A:LW/a;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, La/v;->B:J

    iput-object v3, p0, La/v;->C:LW/a;

    const/4 v0, 0x1

    iput-boolean v0, p0, La/v;->r:Z

    iget-object v0, p0, La/v;->b:Li/E;

    invoke-interface {v0}, Li/E;->a()J

    move-result-wide v0

    iput-wide v0, p0, La/v;->q:J

    iget-wide v0, p0, La/v;->q:J

    const-wide/16 v2, 0x3a98

    add-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, La/v;->j(J)V

    return-void
.end method

.method private final f()Z
    .registers 7

    const-wide/32 v4, 0x1d4c0

    const/4 v1, 0x1

    iget-object v0, p0, La/v;->D:Lj/a;

    invoke-virtual {v0, v4, v5, v1}, Lj/a;->b(JZ)Z

    move-result v0

    if-eqz v0, :cond_38

    iget-object v0, p0, La/v;->b:Li/E;

    invoke-interface {v0}, Li/E;->l()Z

    move-result v0

    if-eqz v0, :cond_38

    move v0, v1

    :goto_15
    if-eqz v0, :cond_37

    iget-object v2, p0, La/v;->b:Li/E;

    const/4 v3, 0x3

    invoke-interface {v2, v3}, Li/E;->b(I)V

    iget-object v2, p0, La/v;->D:Lj/a;

    invoke-virtual {v2, v4, v5}, Lj/a;->b(J)V

    iput-boolean v1, p0, La/v;->r:Z

    iget-object v2, p0, La/v;->b:Li/E;

    invoke-interface {v2, v1}, Li/E;->a(Z)V

    iget-object v1, p0, La/v;->b:Li/E;

    invoke-interface {v1}, Li/E;->a()J

    move-result-wide v1

    iput-wide v1, p0, La/v;->w:J

    iget-wide v1, p0, La/v;->w:J

    add-long/2addr v1, v4

    invoke-direct {p0, v1, v2}, La/v;->j(J)V

    :cond_37
    return v0

    :cond_38
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private final g()V
    .registers 3

    invoke-direct {p0}, La/v;->h()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, La/v;->b:Li/E;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Li/E;->a(Z)V

    invoke-direct {p0}, La/v;->i()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, La/v;->w:J

    :cond_13
    return-void
.end method

.method private final h()Z
    .registers 5

    iget-wide v0, p0, La/v;->w:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private i()V
    .registers 4

    const/4 v2, 0x3

    iget-boolean v0, p0, La/v;->r:Z

    if-eqz v0, :cond_16

    iget-object v0, p0, La/v;->b:Li/E;

    invoke-interface {v0, v2}, Li/E;->a(I)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, La/v;->z:J

    const/4 v0, 0x0

    iput-boolean v0, p0, La/v;->r:Z

    iget-object v0, p0, La/v;->b:Li/E;

    invoke-interface {v0, v2}, Li/E;->c(I)V

    :cond_16
    return-void
.end method

.method private i(J)Z
    .registers 7

    const/4 v1, 0x4

    iget-object v0, p0, La/v;->A:LW/a;

    if-eqz v0, :cond_24

    iget-object v0, p0, La/v;->A:LW/a;

    invoke-virtual {v0, v1}, LW/a;->h(I)Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, La/v;->A:LW/a;

    invoke-virtual {v0, v1}, LW/a;->i(I)I

    move-result v0

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_22

    iget-wide v0, p0, La/v;->B:J

    sub-long v0, p1, v0

    const-wide/32 v2, 0xdbba0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_24

    :cond_22
    const/4 v0, 0x1

    :goto_23
    return v0

    :cond_24
    const/4 v0, 0x0

    goto :goto_23
.end method

.method private j()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, La/v;->s:Z

    iput-boolean v0, p0, La/v;->t:Z

    iput-boolean v0, p0, La/v;->u:Z

    iput-boolean v0, p0, La/v;->v:Z

    iput-boolean v0, p0, La/v;->y:Z

    return-void
.end method

.method private j(J)V
    .registers 7

    iget-wide v0, p0, La/v;->z:J

    cmp-long v0, p1, v0

    if-eqz v0, :cond_10

    iput-wide p1, p0, La/v;->z:J

    iget-object v0, p0, La/v;->b:Li/E;

    const/4 v1, 0x3

    iget-wide v2, p0, La/v;->z:J

    invoke-interface {v0, v1, v2, v3}, Li/E;->a(IJ)V

    :cond_10
    return-void
.end method

.method private k()I
    .registers 2

    iget-boolean v0, p0, La/v;->s:Z

    if-eqz v0, :cond_d

    iget-boolean v0, p0, La/v;->y:Z

    if-eqz v0, :cond_b

    const/16 v0, 0x10

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x2

    goto :goto_a

    :cond_d
    iget-boolean v0, p0, La/v;->u:Z

    if-eqz v0, :cond_13

    const/4 v0, 0x4

    goto :goto_a

    :cond_13
    iget-boolean v0, p0, La/v;->v:Z

    if-eqz v0, :cond_1a

    const/16 v0, 0xb

    goto :goto_a

    :cond_1a
    iget-boolean v0, p0, La/v;->t:Z

    if-eqz v0, :cond_20

    const/4 v0, 0x1

    goto :goto_a

    :cond_20
    const/4 v0, -0x1

    goto :goto_a
.end method

.method private l()Z
    .registers 2

    invoke-virtual {p0}, La/v;->d()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, La/v;->o:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method


# virtual methods
.method public a(I)V
    .registers 4

    const/4 v0, 0x3

    if-ne p1, v0, :cond_7

    const-wide/16 v0, -0x1

    iput-wide v0, p0, La/v;->z:J

    :cond_7
    return-void
.end method

.method public a(IIZ)V
    .registers 8

    invoke-static {p1, p2}, Ll/b;->a(II)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_18

    if-nez p3, :cond_15

    float-to-double v0, v0

    const-wide v2, 0x3fc999999999999aL

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_1b

    :cond_15
    const/4 v0, 0x1

    :goto_16
    iput-boolean v0, p0, La/v;->g:Z

    :cond_18
    iput-boolean p3, p0, La/v;->h:Z

    return-void

    :cond_1b
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public a(LW/a;)V
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, La/v;->p:LW/a;

    return-void
.end method

.method public a(Le/L;)V
    .registers 10

    const-wide/32 v5, 0x927c0

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Le/L;->a()I

    move-result v0

    if-nez v0, :cond_c

    :cond_b
    :goto_b
    return-void

    :cond_c
    iput-object p1, p0, La/v;->m:Le/L;

    iget-object v0, p0, La/v;->e:La/d;

    invoke-virtual {v0}, La/d;->a()Lc/p;

    move-result-object v0

    iget-object v1, p0, La/v;->m:Le/L;

    invoke-virtual {p0, v0, v1}, La/v;->a(Lc/p;Le/L;)Z

    move-result v0

    iput-boolean v0, p0, La/v;->y:Z

    invoke-direct {p0}, La/v;->l()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, La/v;->k:Le/L;

    if-eqz v0, :cond_33

    iget-object v0, p0, La/v;->m:Le/L;

    iget-wide v0, v0, Le/L;->a:J

    iget-object v2, p0, La/v;->k:Le/L;

    iget-wide v2, v2, Le/L;->a:J

    sub-long/2addr v0, v2

    cmp-long v0, v0, v5

    if-lez v0, :cond_b

    :cond_33
    iget-boolean v7, p0, La/v;->s:Z

    iget-object v0, p0, La/v;->e:La/d;

    invoke-virtual {v0}, La/d;->a()Lc/p;

    move-result-object v1

    iget-object v2, p0, La/v;->m:Le/L;

    iget-object v0, p0, La/v;->b:Li/E;

    invoke-interface {v0}, Li/E;->a()J

    move-result-wide v3

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, La/v;->a(Lc/p;Le/L;JJ)Z

    move-result v0

    or-int/2addr v0, v7

    iput-boolean v0, p0, La/v;->s:Z

    iget-boolean v0, p0, La/v;->s:Z

    if-eqz v0, :cond_b

    goto :goto_b
.end method

.method public a(Le/b;)V
    .registers 3

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Le/b;->k()Z

    move-result v0

    if-nez v0, :cond_c

    :cond_8
    const/4 v0, 0x0

    iput-object v0, p0, La/v;->j:Le/b;

    :cond_b
    :goto_b
    return-void

    :cond_c
    iget-object v0, p0, La/v;->j:Le/b;

    if-eqz v0, :cond_18

    iget-object v0, p0, La/v;->j:Le/b;

    invoke-virtual {v0, p1}, Le/b;->a(Le/b;)Z

    move-result v0

    if-nez v0, :cond_b

    :cond_18
    iput-object p1, p0, La/v;->j:Le/b;

    invoke-direct {p0}, La/v;->l()Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    iput-boolean v0, p0, La/v;->t:Z

    goto :goto_b
.end method

.method public a(Li/B;)V
    .registers 7

    const/4 v4, 0x1

    if-nez p1, :cond_4

    :cond_3
    :goto_3
    return-void

    :cond_4
    iput-object p1, p0, La/v;->n:Li/B;

    invoke-direct {p0}, La/v;->l()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, La/v;->l:Z

    if-eqz v0, :cond_1d

    iget-object v0, p0, La/v;->m:Le/L;

    iget-object v1, p0, La/v;->n:Li/B;

    invoke-virtual {p0, v0, v1}, La/v;->a(Le/L;Li/B;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iput-boolean v4, p0, La/v;->u:Z

    goto :goto_3

    :cond_1d
    iget-object v0, p0, La/v;->e:La/d;

    invoke-virtual {v0}, La/d;->b()Li/B;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, La/v;->n:Li/B;

    invoke-static {v0, v1}, Lcom/google/android/location/localizer/b;->a(Li/B;Li/B;)D

    move-result-wide v0

    const-wide/high16 v2, 0x4069

    cmpl-double v0, v0, v2

    if-lez v0, :cond_3

    iput-boolean v4, p0, La/v;->v:Z

    goto :goto_3
.end method

.method public a(Li/C;)V
    .registers 3

    invoke-virtual {p1}, Li/C;->f()Z

    move-result v0

    iput-boolean v0, p0, La/v;->E:Z

    return-void
.end method

.method public a(Z)V
    .registers 2

    return-void
.end method

.method a(Lc/p;Le/L;)Z
    .registers 7

    const/4 v1, 0x0

    move v0, v1

    :goto_2
    invoke-virtual {p2}, Le/L;->a()I

    move-result v2

    if-ge v0, v2, :cond_22

    invoke-virtual {p2, v0}, Le/L;->a(I)Le/M;

    move-result-object v2

    iget-object v2, v2, Le/M;->a:Ljava/lang/Long;

    invoke-virtual {p1, v2}, Lc/p;->a(Ljava/lang/Long;)F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-lez v3, :cond_23

    iget-object v3, p0, La/v;->F:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextFloat()F

    move-result v3

    cmpg-float v2, v3, v2

    if-gez v2, :cond_23

    const/4 v1, 0x1

    :cond_22
    return v1

    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method a(Lc/p;Le/L;JJ)Z
    .registers 12

    invoke-virtual {p2}, Le/L;->a()I

    move-result v0

    :goto_4
    if-lez v0, :cond_23

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p2, v1}, Le/L;->a(I)Le/M;

    move-result-object v1

    iget-object v1, v1, Le/M;->a:Ljava/lang/Long;

    invoke-virtual {p1, v1}, Lc/p;->b(Ljava/lang/Long;)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-eqz v3, :cond_1e

    sub-long v1, p3, v1

    cmp-long v1, v1, p5

    if-lez v1, :cond_20

    :cond_1e
    const/4 v0, 0x1

    :goto_1f
    return v0

    :cond_20
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    :cond_23
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method public b(I)V
    .registers 3

    iget-object v0, p0, La/v;->j:Le/b;

    if-eqz v0, :cond_9

    iget-object v0, p0, La/v;->j:Le/b;

    invoke-virtual {v0, p1}, Le/b;->a(I)V

    :cond_9
    return-void
.end method

.method public b(Z)V
    .registers 2

    iput-boolean p1, p0, La/v;->i:Z

    return-void
.end method

.method protected b(J)Z
    .registers 12

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, La/v;->l()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-direct {p0}, La/v;->j()V

    move v2, v1

    :goto_c
    return v2

    :cond_d
    iget-object v0, p0, La/v;->C:LW/a;

    iget-object v3, p0, La/v;->j:Le/b;

    invoke-virtual {p0, v0, v3}, La/v;->a(LW/a;Le/b;)Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-direct {p0, p1, p2}, La/v;->i(J)Z

    move-result v0

    if-eqz v0, :cond_21

    :cond_1d
    invoke-direct {p0}, La/v;->e()V

    goto :goto_c

    :cond_21
    iget-object v0, p0, La/v;->m:Le/L;

    if-eqz v0, :cond_33

    iget-object v0, p0, La/v;->m:Le/L;

    iget-wide v3, v0, Le/L;->a:J

    iget-object v0, p0, La/v;->e:La/d;

    invoke-virtual {v0}, La/d;->e()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-gtz v0, :cond_9e

    :cond_33
    move v0, v2

    :goto_34
    iget-object v3, p0, La/v;->j:Le/b;

    if-eqz v3, :cond_48

    iget-object v3, p0, La/v;->j:Le/b;

    invoke-virtual {v3}, Le/b;->h()J

    move-result-wide v3

    iget-object v5, p0, La/v;->e:La/d;

    invoke-virtual {v5}, La/d;->d()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gtz v3, :cond_a0

    :cond_48
    move v3, v2

    :goto_49
    iget-boolean v4, p0, La/v;->s:Z

    if-eqz v4, :cond_51

    if-eqz v0, :cond_51

    iput-boolean v1, p0, La/v;->s:Z

    :cond_51
    iget-boolean v4, p0, La/v;->t:Z

    if-eqz v4, :cond_59

    if-eqz v3, :cond_59

    iput-boolean v1, p0, La/v;->t:Z

    :cond_59
    iget-object v4, p0, La/v;->m:Le/L;

    if-eqz v4, :cond_a2

    iget-object v4, p0, La/v;->m:Le/L;

    iget-wide v4, v4, Le/L;->a:J

    sub-long v4, p1, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/32 v6, 0xafc80

    cmp-long v4, v4, v6

    if-gtz v4, :cond_a2

    move v4, v2

    :goto_6f
    iget-wide v5, p0, La/v;->x:J

    const-wide/16 v7, -0x1

    cmp-long v5, v5, v7

    if-nez v5, :cond_a4

    move v5, v1

    :goto_78
    iget-boolean v6, p0, La/v;->s:Z

    if-eqz v6, :cond_b3

    iget-boolean v6, p0, La/v;->y:Z

    if-eqz v6, :cond_b3

    iget-boolean v6, p0, La/v;->u:Z

    if-nez v6, :cond_b3

    iget-boolean v6, p0, La/v;->E:Z

    if-eqz v6, :cond_b3

    iget-boolean v6, p0, La/v;->i:Z

    if-nez v6, :cond_b3

    if-eqz v4, :cond_b3

    if-nez v5, :cond_b3

    invoke-direct {p0}, La/v;->f()Z

    move-result v4

    if-eqz v4, :cond_b3

    sget-object v0, La/e;->c:La/e;

    iput-object v0, p0, La/v;->f:La/e;

    iput-boolean v2, p0, La/v;->l:Z

    goto/16 :goto_c

    :cond_9e
    move v0, v1

    goto :goto_34

    :cond_a0
    move v3, v1

    goto :goto_49

    :cond_a2
    move v4, v1

    goto :goto_6f

    :cond_a4
    iget-wide v5, p0, La/v;->x:J

    sub-long v5, p1, v5

    const-wide/32 v7, 0x493e0

    cmp-long v5, v5, v7

    if-gez v5, :cond_b1

    move v5, v2

    goto :goto_78

    :cond_b1
    move v5, v1

    goto :goto_78

    :cond_b3
    iget-boolean v4, p0, La/v;->y:Z

    if-nez v4, :cond_c7

    if-eqz v0, :cond_c7

    if-eqz v3, :cond_c7

    iget-boolean v0, p0, La/v;->u:Z

    if-nez v0, :cond_c3

    iget-boolean v0, p0, La/v;->v:Z

    if-eqz v0, :cond_c7

    :cond_c3
    iput-boolean v1, p0, La/v;->u:Z

    iput-boolean v1, p0, La/v;->v:Z

    :cond_c7
    iget-boolean v0, p0, La/v;->s:Z

    if-nez v0, :cond_d7

    iget-boolean v0, p0, La/v;->t:Z

    if-nez v0, :cond_d7

    iget-boolean v0, p0, La/v;->u:Z

    if-nez v0, :cond_d7

    iget-boolean v0, p0, La/v;->v:Z

    if-eqz v0, :cond_f4

    :cond_d7
    invoke-direct {p0}, La/v;->k()I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_f4

    invoke-direct {p0, v0}, La/v;->c(I)Z

    move-result v0

    if-eqz v0, :cond_e7

    invoke-direct {p0}, La/v;->j()V

    :cond_e7
    invoke-direct {p0, p1, p2}, La/v;->i(J)Z

    move-result v0

    if-eqz v0, :cond_f4

    invoke-direct {p0}, La/v;->e()V

    :goto_f0
    iput-boolean v1, p0, La/v;->y:Z

    goto/16 :goto_c

    :cond_f4
    move v2, v1

    goto :goto_f0
.end method

.method public bridge synthetic c()V
    .registers 1

    invoke-super {p0}, La/a;->c()V

    return-void
.end method

.method public c(Z)V
    .registers 2

    iput-boolean p1, p0, La/v;->o:Z

    return-void
.end method

.method protected c(J)Z
    .registers 9

    const-wide/32 v4, 0x1d4c0

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-wide v2, p0, La/v;->w:J

    sub-long v2, p1, v2

    cmp-long v2, v2, v4

    if-lez v2, :cond_2f

    move v2, v1

    :goto_e
    if-eqz v2, :cond_31

    :goto_10
    iput-wide p1, p0, La/v;->x:J

    iget-boolean v3, p0, La/v;->E:Z

    if-eqz v3, :cond_3b

    invoke-direct {p0}, La/v;->l()Z

    move-result v3

    if-eqz v3, :cond_3b

    iget-boolean v3, p0, La/v;->i:Z

    if-nez v3, :cond_3b

    iget-boolean v3, p0, La/v;->u:Z

    if-nez v3, :cond_26

    if-eqz v2, :cond_34

    :cond_26
    invoke-direct {p0}, La/v;->g()V

    sget-object v0, La/e;->b:La/e;

    iput-object v0, p0, La/v;->f:La/e;

    move v0, v1

    :goto_2e
    return v0

    :cond_2f
    move v2, v0

    goto :goto_e

    :cond_31
    const-wide/16 p1, -0x1

    goto :goto_10

    :cond_34
    iget-wide v1, p0, La/v;->w:J

    add-long/2addr v1, v4

    invoke-direct {p0, v1, v2}, La/v;->j(J)V

    goto :goto_2e

    :cond_3b
    invoke-direct {p0}, La/v;->g()V

    sget-object v0, La/e;->b:La/e;

    iput-object v0, p0, La/v;->f:La/e;

    move v0, v1

    goto :goto_2e
.end method

.method protected d()Z
    .registers 2

    iget-boolean v0, p0, La/v;->g:Z

    return v0
.end method

.method protected f(J)Z
    .registers 8

    const-wide/16 v3, 0x3a98

    const/4 v0, 0x0

    iget-object v1, p0, La/v;->p:LW/a;

    if-nez v1, :cond_14

    const/4 v0, 0x1

    invoke-direct {p0}, La/v;->i()V

    const-wide/16 v1, -0x1

    iput-wide v1, p0, La/v;->q:J

    sget-object v1, La/e;->b:La/e;

    iput-object v1, p0, La/v;->f:La/e;

    :goto_13
    return v0

    :cond_14
    iget-wide v1, p0, La/v;->q:J

    sub-long v1, p1, v1

    cmp-long v1, v1, v3

    if-ltz v1, :cond_20

    invoke-direct {p0}, La/v;->i()V

    goto :goto_13

    :cond_20
    iget-wide v1, p0, La/v;->q:J

    add-long/2addr v1, v3

    invoke-direct {p0, v1, v2}, La/v;->j(J)V

    goto :goto_13
.end method
