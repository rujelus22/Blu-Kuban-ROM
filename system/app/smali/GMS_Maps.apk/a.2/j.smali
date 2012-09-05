.class public La/j;
.super La/a;


# static fields
.field static final g:I


# instance fields
.field h:J

.field i:Li/B;

.field j:Li/B;

.field k:Li/B;

.field l:J

.field m:I

.field n:Z

.field o:Z

.field p:Z

.field q:I

.field r:Le/b;

.field s:Le/L;

.field t:LW/a;

.field u:LW/a;

.field v:LW/a;

.field w:Z

.field x:J

.field y:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const v0, 0x2af80

    const-wide/high16 v1, 0x3ff0

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    add-int/lit8 v1, v1, 0x1

    mul-int/lit16 v1, v1, 0x1388

    add-int/2addr v0, v1

    sput v0, La/j;->g:I

    return-void
.end method

.method public constructor <init>(Li/E;Lc/m;La/G;La/d;)V
    .registers 16

    const-wide/16 v9, -0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    const-string v1, "BurstCollector"

    sget-object v6, La/e;->b:La/e;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, La/a;-><init>(Ljava/lang/String;Li/E;Lc/m;La/G;La/d;La/e;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, La/j;->h:J

    iput-object v8, p0, La/j;->i:Li/B;

    iput-object v8, p0, La/j;->j:Li/B;

    iput-object v8, p0, La/j;->k:Li/B;

    iput-wide v9, p0, La/j;->l:J

    iput v7, p0, La/j;->m:I

    iput-boolean v7, p0, La/j;->n:Z

    iput-boolean v7, p0, La/j;->o:Z

    iput-boolean v7, p0, La/j;->p:Z

    iput v7, p0, La/j;->q:I

    iput-object v8, p0, La/j;->r:Le/b;

    iput-object v8, p0, La/j;->s:Le/L;

    iput-boolean v7, p0, La/j;->w:Z

    iput-wide v9, p0, La/j;->x:J

    iput-boolean v7, p0, La/j;->y:Z

    return-void
.end method

.method private a(ILi/B;)V
    .registers 10

    const/4 v6, 0x0

    iget-object v0, p0, La/j;->s:Le/L;

    invoke-virtual {p0, v0, p2}, La/j;->a(Le/L;Li/B;)Z

    move-result v1

    iget-object v0, p0, La/j;->r:Le/b;

    if-eqz v0, :cond_59

    if-nez v1, :cond_17

    iget-object v0, p0, La/j;->e:La/d;

    iget-object v2, p0, La/j;->r:Le/b;

    invoke-virtual {v0, v2, p2}, La/d;->a(Le/b;Li/B;)Z

    move-result v0

    if-nez v0, :cond_59

    :cond_17
    const/4 v0, 0x1

    :goto_18
    iput-object p2, p0, La/j;->j:Li/B;

    if-eqz v0, :cond_5b

    iget-object v2, p0, La/j;->r:Le/b;

    :goto_1e
    if-eqz v1, :cond_5d

    iget-object v3, p0, La/j;->s:Le/L;

    :goto_22
    iget-object v1, p0, La/j;->j:Li/B;

    iget-boolean v4, p0, La/j;->p:Z

    move-object v0, p0

    move v5, p1

    invoke-virtual/range {v0 .. v5}, La/j;->a(Li/B;Le/b;Le/L;ZI)LW/a;

    move-result-object v0

    iget-object v1, p0, La/j;->e:La/d;

    iget-object v4, p0, La/j;->j:Li/B;

    invoke-virtual {v1, v4, v2, v3}, La/d;->a(Li/B;Le/b;Le/L;)V

    iget-object v1, p0, La/j;->t:LW/a;

    if-nez v1, :cond_40

    new-instance v1, LW/a;

    sget-object v2, Lk/a;->ap:LW/d;

    invoke-direct {v1, v2}, LW/a;-><init>(LW/d;)V

    iput-object v1, p0, La/j;->t:LW/a;

    :cond_40
    iget-object v1, p0, La/j;->t:LW/a;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, LW/a;->a(ILW/a;)V

    iget-object v0, p0, La/j;->r:Le/b;

    if-eqz v0, :cond_56

    iget-object v0, p0, La/j;->u:LW/a;

    if-nez v0, :cond_56

    iget-object v0, p0, La/j;->r:Le/b;

    invoke-virtual {v0}, Le/b;->m()LW/a;

    move-result-object v0

    iput-object v0, p0, La/j;->u:LW/a;

    :cond_56
    iput-object v6, p0, La/j;->s:Le/L;

    return-void

    :cond_59
    const/4 v0, 0x0

    goto :goto_18

    :cond_5b
    move-object v2, v6

    goto :goto_1e

    :cond_5d
    move-object v3, v6

    goto :goto_22
.end method

.method private b(Li/B;)I
    .registers 6

    const/16 v1, 0xa

    const/16 v0, 0x9

    iget v2, p0, La/j;->q:I

    if-nez v2, :cond_a

    const/4 v0, 0x6

    :cond_9
    :goto_9
    return v0

    :cond_a
    iget v2, p0, La/j;->q:I

    if-ne v2, v1, :cond_1e

    iget-object v2, p0, La/j;->k:Li/B;

    if-eqz v2, :cond_9

    iget-object v2, p0, La/j;->k:Li/B;

    const/16 v3, 0x19

    invoke-static {p1, v2, v3}, La/j;->a(Li/B;Li/B;I)Z

    move-result v2

    if-eqz v2, :cond_9

    move v0, v1

    goto :goto_9

    :cond_1e
    const/16 v0, 0x8

    goto :goto_9
.end method

.method private e()V
    .registers 5

    const/4 v3, 0x0

    iget-object v0, p0, La/j;->t:LW/a;

    iput-object v0, p0, La/j;->v:LW/a;

    iget-object v0, p0, La/j;->d:La/G;

    iget-object v1, p0, La/j;->b:Li/E;

    iget-object v2, p0, La/j;->v:LW/a;

    invoke-virtual {v0, v1, v2}, La/G;->a(Li/E;LW/a;)V

    iget-object v0, p0, La/j;->b:Li/E;

    iget-object v1, p0, La/j;->v:LW/a;

    iget-object v2, p0, La/j;->u:LW/a;

    invoke-interface {v0, v1, v2}, Li/E;->b(LW/a;LW/a;)V

    iput-object v3, p0, La/j;->t:LW/a;

    iput-object v3, p0, La/j;->u:LW/a;

    sget-object v0, La/e;->f:La/e;

    iput-object v0, p0, La/j;->f:La/e;

    iget-object v0, p0, La/j;->b:Li/E;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Li/E;->b(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, La/j;->y:Z

    iget-object v0, p0, La/j;->b:Li/E;

    invoke-interface {v0}, Li/E;->a()J

    move-result-wide v0

    iput-wide v0, p0, La/j;->x:J

    return-void
.end method

.method private f()Z
    .registers 3

    const/4 v1, 0x4

    iget-object v0, p0, La/j;->t:LW/a;

    if-eqz v0, :cond_19

    iget-object v0, p0, La/j;->t:LW/a;

    invoke-virtual {v0, v1}, LW/a;->h(I)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, La/j;->t:LW/a;

    invoke-virtual {v0, v1}, LW/a;->i(I)I

    move-result v0

    const/16 v1, 0xb

    if-lt v0, v1, :cond_19

    const/4 v0, 0x1

    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method private g()V
    .registers 3

    const/4 v1, 0x2

    iget-boolean v0, p0, La/j;->y:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, La/j;->b:Li/E;

    invoke-interface {v0, v1}, Li/E;->a(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, La/j;->y:Z

    iget-object v0, p0, La/j;->b:Li/E;

    invoke-interface {v0, v1}, Li/E;->c(I)V

    :cond_12
    return-void
.end method

.method private i(J)Z
    .registers 9

    iget-boolean v0, p0, La/j;->o:Z

    if-eqz v0, :cond_19

    const-wide/32 v0, 0x75300

    :goto_7
    iget-wide v2, p0, La/j;->l:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_17

    iget-wide v2, p0, La/j;->l:J

    sub-long v2, p1, v2

    cmp-long v0, v2, v0

    if-lez v0, :cond_1d

    :cond_17
    const/4 v0, 0x1

    :goto_18
    return v0

    :cond_19
    const-wide/32 v0, 0xdbba0

    goto :goto_7

    :cond_1d
    const/4 v0, 0x0

    goto :goto_18
.end method

.method private j(J)Z
    .registers 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-object v2, La/k;->a:[I

    iget-object v3, p0, La/j;->f:La/e;

    invoke-virtual {v3}, La/e;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_38

    move v0, v1

    :cond_10
    :goto_10
    :pswitch_10
    return v0

    :pswitch_11
    iget-object v2, p0, La/j;->b:Li/E;

    invoke-interface {v2}, Li/E;->l()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-direct {p0, p1, p2}, La/j;->k(J)Z

    move-result v2

    if-nez v2, :cond_2a

    iget-wide v2, p0, La/j;->h:J

    sub-long v2, p1, v2

    sget v4, La/j;->g:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_2c

    :cond_2a
    move v0, v1

    goto :goto_10

    :cond_2c
    :pswitch_2c
    iget-boolean v2, p0, La/j;->w:Z

    if-eqz v2, :cond_36

    invoke-virtual {p0}, La/j;->d()Z

    move-result v2

    if-nez v2, :cond_10

    :cond_36
    move v0, v1

    goto :goto_10

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_10
        :pswitch_11
        :pswitch_2c
    .end packed-switch
.end method

.method private k(J)Z
    .registers 9

    const-wide/16 v4, 0x55f0

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, La/j;->j:Li/B;

    if-nez v2, :cond_13

    iget-wide v2, p0, La/j;->h:J

    sub-long v2, p1, v2

    cmp-long v2, v2, v4

    if-lez v2, :cond_11

    :cond_10
    :goto_10
    return v0

    :cond_11
    move v0, v1

    goto :goto_10

    :cond_13
    iget-object v2, p0, La/j;->j:Li/B;

    invoke-interface {v2}, Li/B;->f()J

    move-result-wide v2

    sub-long v2, p1, v2

    cmp-long v2, v2, v4

    if-gez v2, :cond_10

    move v0, v1

    goto :goto_10
.end method

.method private l(J)V
    .registers 8

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, La/j;->f:La/e;

    sget-object v1, La/e;->c:La/e;

    if-eq v0, v1, :cond_e

    iget-object v0, p0, La/j;->f:La/e;

    sget-object v1, La/e;->f:La/e;

    if-ne v0, v1, :cond_1e

    :cond_e
    iget-object v0, p0, La/j;->j:Li/B;

    if-eqz v0, :cond_1c

    iget-object v0, p0, La/j;->k:Li/B;

    if-nez v0, :cond_3a

    iget-object v0, p0, La/j;->j:Li/B;

    iput-object v0, p0, La/j;->k:Li/B;

    iput v4, p0, La/j;->m:I

    :cond_1c
    :goto_1c
    iput-wide p1, p0, La/j;->l:J

    :cond_1e
    const-wide/16 v0, 0x0

    iput-wide v0, p0, La/j;->h:J

    iput-object v3, p0, La/j;->i:Li/B;

    iput-object v3, p0, La/j;->j:Li/B;

    const/4 v0, 0x0

    iput v0, p0, La/j;->q:I

    sget-object v0, La/e;->b:La/e;

    iput-object v0, p0, La/j;->f:La/e;

    iput-object v3, p0, La/j;->v:LW/a;

    iput-object v3, p0, La/j;->t:LW/a;

    iput-object v3, p0, La/j;->u:LW/a;

    iget-object v0, p0, La/j;->b:Li/E;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Li/E;->a(I)V

    return-void

    :cond_3a
    iget-object v0, p0, La/j;->j:Li/B;

    iget-object v1, p0, La/j;->k:Li/B;

    const/16 v2, 0x19

    invoke-static {v0, v1, v2}, La/j;->a(Li/B;Li/B;I)Z

    move-result v0

    if-eqz v0, :cond_4d

    iget v0, p0, La/j;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, La/j;->m:I

    goto :goto_1c

    :cond_4d
    iget-object v0, p0, La/j;->j:Li/B;

    iput-object v0, p0, La/j;->k:Li/B;

    iput v4, p0, La/j;->m:I

    goto :goto_1c
.end method


# virtual methods
.method a(I)V
    .registers 2

    return-void
.end method

.method a(IIZ)V
    .registers 12

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {p1, p2}, Ll/b;->a(II)F

    move-result v3

    const/4 v0, 0x0

    cmpl-float v0, v3, v0

    if-ltz v0, :cond_28

    if-nez p3, :cond_17

    float-to-double v4, v3

    const-wide v6, 0x3fc999999999999aL

    cmpl-double v0, v4, v6

    if-ltz v0, :cond_2b

    :cond_17
    move v0, v2

    :goto_18
    iput-boolean v0, p0, La/j;->n:Z

    if-eqz p3, :cond_2d

    float-to-double v3, v3

    const-wide v5, 0x3feccccccccccccdL

    cmpl-double v0, v3, v5

    if-ltz v0, :cond_2d

    :goto_26
    iput-boolean v2, p0, La/j;->o:Z

    :cond_28
    iput-boolean p3, p0, La/j;->p:Z

    return-void

    :cond_2b
    move v0, v1

    goto :goto_18

    :cond_2d
    move v2, v1

    goto :goto_26
.end method

.method a(LW/a;)V
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, La/j;->v:LW/a;

    return-void
.end method

.method a(Le/L;)V
    .registers 2

    iput-object p1, p0, La/j;->s:Le/L;

    return-void
.end method

.method a(Le/b;)V
    .registers 3

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Le/b;->k()Z

    move-result v0

    if-eqz v0, :cond_b

    iput-object p1, p0, La/j;->r:Le/b;

    :goto_a
    return-void

    :cond_b
    const/4 v0, 0x0

    iput-object v0, p0, La/j;->r:Le/b;

    goto :goto_a
.end method

.method a(Li/B;)V
    .registers 10

    iget-object v0, p0, La/j;->f:La/e;

    sget-object v1, La/e;->b:La/e;

    if-ne v0, v1, :cond_12

    iget-object v0, p0, La/j;->b:Li/E;

    invoke-interface {v0}, Li/E;->a()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, La/j;->i(J)Z

    move-result v0

    if-nez v0, :cond_18

    :cond_12
    iget-object v0, p0, La/j;->f:La/e;

    sget-object v1, La/e;->c:La/e;

    if-ne v0, v1, :cond_2d

    :cond_18
    iget-object v0, p0, La/j;->j:Li/B;

    if-eqz v0, :cond_2e

    invoke-interface {p1}, Li/B;->f()J

    move-result-wide v0

    iget-object v2, p0, La/j;->j:Li/B;

    invoke-interface {v2}, Li/B;->f()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x2ee0

    cmp-long v0, v0, v2

    if-gez v0, :cond_2e

    :cond_2d
    :goto_2d
    return-void

    :cond_2e
    iget-object v0, p0, La/j;->k:Li/B;

    if-eqz v0, :cond_54

    iget-object v0, p0, La/j;->k:Li/B;

    invoke-interface {v0}, Li/B;->b()D

    move-result-wide v0

    iget-object v2, p0, La/j;->k:Li/B;

    invoke-interface {v2}, Li/B;->c()D

    move-result-wide v2

    invoke-interface {p1}, Li/B;->b()D

    move-result-wide v4

    invoke-interface {p1}, Li/B;->c()D

    move-result-wide v6

    invoke-static/range {v0 .. v7}, Lcom/google/android/location/localizer/b;->c(DDDD)D

    move-result-wide v0

    double-to-int v0, v0

    const/16 v1, 0x19

    if-ge v0, v1, :cond_54

    iget v0, p0, La/j;->m:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_2d

    :cond_54
    iput-object p1, p0, La/j;->i:Li/B;

    goto :goto_2d
.end method

.method a(Li/C;)V
    .registers 2

    return-void
.end method

.method a(Z)V
    .registers 2

    return-void
.end method

.method b(I)V
    .registers 3

    iget-object v0, p0, La/j;->r:Le/b;

    if-eqz v0, :cond_9

    iget-object v0, p0, La/j;->r:Le/b;

    invoke-virtual {v0, p1}, Le/b;->a(I)V

    :cond_9
    return-void
.end method

.method b(Z)V
    .registers 2

    return-void
.end method

.method protected b(J)Z
    .registers 8

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, La/j;->j(J)Z

    move-result v1

    if-eqz v1, :cond_38

    iget-object v1, p0, La/j;->i:Li/B;

    if-eqz v1, :cond_38

    invoke-direct {p0, p1, p2}, La/j;->i(J)Z

    move-result v1

    if-eqz v1, :cond_38

    iget-object v1, p0, La/j;->i:Li/B;

    invoke-interface {v1}, Li/B;->f()J

    move-result-wide v1

    sub-long v1, p1, v1

    const-wide/32 v3, 0xea60

    cmp-long v1, v1, v3

    if-gez v1, :cond_38

    iget-object v1, p0, La/j;->i:Li/B;

    invoke-interface {v1}, Li/B;->f()J

    move-result-wide v1

    iget-object v3, p0, La/j;->e:La/d;

    invoke-virtual {v3}, La/d;->c()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_38

    const/4 v0, 0x1

    sget-object v1, La/e;->c:La/e;

    iput-object v1, p0, La/j;->f:La/e;

    iput-wide p1, p0, La/j;->h:J

    :goto_37
    return v0

    :cond_38
    const/4 v1, 0x0

    iput-object v1, p0, La/j;->i:Li/B;

    goto :goto_37
.end method

.method public bridge synthetic c()V
    .registers 1

    invoke-super {p0}, La/a;->c()V

    return-void
.end method

.method public c(Z)V
    .registers 2

    iput-boolean p1, p0, La/j;->w:Z

    return-void
.end method

.method protected c(J)Z
    .registers 10

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, La/j;->j(J)Z

    move-result v2

    if-nez v2, :cond_29

    iget-object v0, p0, La/j;->t:LW/a;

    if-eqz v0, :cond_25

    invoke-direct {p0}, La/j;->e()V

    :goto_f
    iget-object v0, p0, La/j;->f:La/e;

    sget-object v2, La/e;->c:La/e;

    if-ne v0, v2, :cond_24

    iget-object v0, p0, La/j;->b:Li/E;

    const/4 v2, 0x2

    iget-object v3, p0, La/j;->j:Li/B;

    invoke-interface {v3}, Li/B;->f()J

    move-result-wide v3

    const-wide/16 v5, 0x55f0

    add-long/2addr v3, v5

    invoke-interface {v0, v2, v3, v4}, Li/E;->a(IJ)V

    :cond_24
    return v1

    :cond_25
    invoke-direct {p0, p1, p2}, La/j;->l(J)V

    goto :goto_f

    :cond_29
    iget-object v2, p0, La/j;->u:LW/a;

    iget-object v3, p0, La/j;->r:Le/b;

    invoke-virtual {p0, v2, v3}, La/j;->a(LW/a;Le/b;)Z

    move-result v2

    if-eqz v2, :cond_5d

    iget-object v2, p0, La/j;->i:Li/B;

    if-eqz v2, :cond_61

    iget-object v2, p0, La/j;->i:Li/B;

    invoke-direct {p0, v2}, La/j;->b(Li/B;)I

    move-result v2

    iget-object v3, p0, La/j;->i:Li/B;

    invoke-direct {p0, v2, v3}, La/j;->a(ILi/B;)V

    iget v2, p0, La/j;->q:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, La/j;->q:I

    iget v2, p0, La/j;->q:I

    const/16 v3, 0xb

    if-ge v2, v3, :cond_54

    invoke-direct {p0}, La/j;->f()Z

    move-result v2

    if-eqz v2, :cond_58

    :cond_54
    invoke-direct {p0}, La/j;->e()V

    move v0, v1

    :cond_58
    const/4 v1, 0x0

    iput-object v1, p0, La/j;->i:Li/B;

    move v1, v0

    goto :goto_f

    :cond_5d
    invoke-direct {p0}, La/j;->e()V

    goto :goto_f

    :cond_61
    move v1, v0

    goto :goto_f
.end method

.method d()Z
    .registers 2

    iget-boolean v0, p0, La/j;->n:Z

    return v0
.end method

.method protected f(J)Z
    .registers 10

    const-wide/16 v5, 0x3a98

    const/4 v0, 0x0

    iget-object v1, p0, La/j;->v:LW/a;

    if-nez v1, :cond_21

    const/4 v0, 0x1

    const-wide/16 v1, -0x1

    iput-wide v1, p0, La/j;->x:J

    iget v1, p0, La/j;->q:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_19

    invoke-direct {p0, p1, p2}, La/j;->l(J)V

    :goto_15
    invoke-direct {p0}, La/j;->g()V

    :goto_18
    return v0

    :cond_19
    const/4 v1, 0x0

    iput-object v1, p0, La/j;->i:Li/B;

    sget-object v1, La/e;->c:La/e;

    iput-object v1, p0, La/j;->f:La/e;

    goto :goto_15

    :cond_21
    iget-wide v1, p0, La/j;->x:J

    sub-long v1, p1, v1

    cmp-long v1, v1, v5

    if-ltz v1, :cond_2d

    invoke-direct {p0}, La/j;->g()V

    goto :goto_18

    :cond_2d
    iget-object v1, p0, La/j;->b:Li/E;

    const/4 v2, 0x2

    iget-wide v3, p0, La/j;->x:J

    add-long/2addr v3, v5

    invoke-interface {v1, v2, v3, v4}, Li/E;->a(IJ)V

    goto :goto_18
.end method
