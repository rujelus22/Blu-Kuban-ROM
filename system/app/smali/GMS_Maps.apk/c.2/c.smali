.class public Lc/c;
.super Ljava/lang/Object;


# static fields
.field static final a:J

.field static final b:LW/a;


# instance fields
.field final c:Li/E;

.field final d:Lc/m;

.field final e:Lc/p;

.field final f:Li/C;

.field final g:Ljava/util/List;

.field final h:Ljava/util/List;

.field i:I

.field j:I

.field k:I

.field l:Z

.field m:Lc/e;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide/32 v2, 0x2932e00

    const/4 v4, -0x1

    const-wide/32 v0, 0x5265c00

    invoke-static {v2, v3, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    sput-wide v0, Lc/c;->a:J

    new-instance v0, LW/a;

    sget-object v1, Lk/a;->X:LW/d;

    invoke-direct {v0, v1}, LW/a;-><init>(LW/d;)V

    sput-object v0, Lc/c;->b:LW/a;

    sget-object v0, Lc/c;->b:LW/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v4}, LW/a;->g(II)V

    sget-object v0, Lc/c;->b:LW/a;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v4}, LW/a;->g(II)V

    return-void
.end method

.method public constructor <init>(Li/E;Lc/m;Lc/p;Li/C;)V
    .registers 7

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc/c;->g:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc/c;->h:Ljava/util/List;

    iput v1, p0, Lc/c;->i:I

    iput v1, p0, Lc/c;->j:I

    iput v1, p0, Lc/c;->k:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc/c;->l:Z

    sget-object v0, Lc/e;->a:Lc/e;

    iput-object v0, p0, Lc/c;->m:Lc/e;

    iput-object p1, p0, Lc/c;->c:Li/E;

    iput-object p2, p0, Lc/c;->d:Lc/m;

    iput-object p3, p0, Lc/c;->e:Lc/p;

    iput-object p4, p0, Lc/c;->f:Li/C;

    return-void
.end method

.method private a(J)LW/a;
    .registers 6

    new-instance v0, LW/a;

    sget-object v1, Lk/a;->V:LW/d;

    invoke-direct {v0, v1}, LW/a;-><init>(LW/d;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1, p2}, LW/a;->b(IJ)V

    const/4 v1, 0x1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, LW/a;->b(ILjava/lang/String;)V

    return-object v0
.end method

.method private a(Z)V
    .registers 5

    iget-object v0, p0, Lc/c;->c:Li/E;

    invoke-interface {v0}, Li/E;->a()J

    move-result-wide v0

    iget-object v2, p0, Lc/c;->d:Lc/m;

    invoke-virtual {v2, v0, v1, p1}, Lc/m;->a(JZ)V

    iget-object v2, p0, Lc/c;->e:Lc/p;

    invoke-virtual {v2, v0, v1, p1}, Lc/p;->a(JZ)V

    return-void
.end method

.method private c()V
    .registers 2

    sget-object v0, Lc/e;->a:Lc/e;

    iput-object v0, p0, Lc/c;->m:Lc/e;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lc/c;->a(Z)V

    invoke-direct {p0}, Lc/c;->k()V

    invoke-direct {p0}, Lc/c;->d()V

    return-void
.end method

.method private d()V
    .registers 3

    iget-boolean v0, p0, Lc/c;->l:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lc/c;->c:Li/E;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Li/E;->c(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc/c;->l:Z

    :cond_d
    return-void
.end method

.method private e()V
    .registers 2

    iget-object v0, p0, Lc/c;->f:Li/C;

    invoke-virtual {v0}, Li/C;->b()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-direct {p0}, Lc/c;->f()V

    :goto_b
    return-void

    :cond_c
    invoke-direct {p0}, Lc/c;->g()V

    goto :goto_b
.end method

.method private f()V
    .registers 7

    new-instance v0, LW/a;

    sget-object v1, Lk/a;->ap:LW/d;

    invoke-direct {v0, v1}, LW/a;-><init>(LW/d;)V

    iget-object v1, p0, Lc/c;->c:Li/E;

    invoke-interface {v1, v0}, Li/E;->b(LW/a;)V

    invoke-direct {p0}, Lc/c;->h()V

    iget-object v0, p0, Lc/c;->c:Li/E;

    const/4 v1, 0x4

    iget-object v2, p0, Lc/c;->c:Li/E;

    invoke-interface {v2}, Li/E;->a()J

    move-result-wide v2

    const-wide/16 v4, 0x2710

    add-long/2addr v2, v4

    invoke-interface {v0, v1, v2, v3}, Li/E;->a(IJ)V

    sget-object v0, Lc/e;->b:Lc/e;

    iput-object v0, p0, Lc/c;->m:Lc/e;

    return-void
.end method

.method private g()V
    .registers 9

    iget-object v0, p0, Lc/c;->d:Lc/m;

    invoke-virtual {v0}, Lc/m;->d()Lc/t;

    move-result-object v0

    iget-object v1, p0, Lc/c;->d:Lc/m;

    invoke-virtual {v1}, Lc/m;->c()Lc/t;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lc/c;->a(Lc/t;Lc/t;)V

    invoke-direct {p0}, Lc/c;->i()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-direct {p0}, Lc/c;->h()V

    iget-object v0, p0, Lc/c;->c:Li/E;

    const/4 v1, 0x4

    iget-object v2, p0, Lc/c;->c:Li/E;

    invoke-interface {v2}, Li/E;->a()J

    move-result-wide v2

    iget v4, p0, Lc/c;->j:I

    int-to-long v4, v4

    const-wide/16 v6, 0x2710

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    invoke-interface {v0, v1, v2, v3}, Li/E;->a(IJ)V

    sget-object v0, Lc/e;->c:Lc/e;

    iput-object v0, p0, Lc/c;->m:Lc/e;

    :cond_2f
    return-void
.end method

.method private h()V
    .registers 3

    iget-boolean v0, p0, Lc/c;->l:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Lc/c;->c:Li/E;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Li/E;->b(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc/c;->l:Z

    :cond_d
    return-void
.end method

.method private i()Z
    .registers 2

    invoke-direct {p0}, Lc/c;->l()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-direct {p0}, Lc/c;->j()V

    :cond_9
    return v0
.end method

.method private j()V
    .registers 3

    iget v0, p0, Lc/c;->j:I

    if-eqz v0, :cond_12

    iget v0, p0, Lc/c;->k:I

    int-to-float v0, v0

    iget v1, p0, Lc/c;->j:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const v1, 0x3f333333

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_23

    :cond_12
    const/4 v0, 0x1

    :goto_13
    if-eqz v0, :cond_19

    iget v1, p0, Lc/c;->j:I

    if-nez v1, :cond_19

    :cond_19
    invoke-direct {p0, v0}, Lc/c;->a(Z)V

    invoke-direct {p0}, Lc/c;->k()V

    invoke-direct {p0}, Lc/c;->d()V

    return-void

    :cond_23
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private k()V
    .registers 5

    const/4 v1, -0x1

    iget-object v0, p0, Lc/c;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lc/c;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iput v1, p0, Lc/c;->i:I

    iput v1, p0, Lc/c;->j:I

    iput v1, p0, Lc/c;->k:I

    sget-object v0, Lc/e;->a:Lc/e;

    iput-object v0, p0, Lc/c;->m:Lc/e;

    invoke-virtual {p0}, Lc/c;->b()J

    move-result-wide v0

    iget-object v2, p0, Lc/c;->c:Li/E;

    const/4 v3, 0x4

    invoke-interface {v2, v3, v0, v1}, Li/E;->a(IJ)V

    return-void
.end method

.method private l()Z
    .registers 12

    const/4 v4, 0x0

    const/4 v10, 0x4

    const/4 v2, 0x0

    const/4 v9, 0x2

    const/4 v5, 0x1

    iget-object v0, p0, Lc/c;->c:Li/E;

    invoke-interface {v0}, Li/E;->b()J

    move-result-wide v6

    iget-object v0, p0, Lc/c;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_a3

    new-instance v3, LW/a;

    sget-object v0, Lk/a;->ag:LW/d;

    invoke-direct {v3, v0}, LW/a;-><init>(LW/d;)V

    sget-object v0, Lc/c;->b:LW/a;

    invoke-virtual {v3, v5, v0}, LW/a;->b(ILW/a;)V

    invoke-virtual {v3, v9, v6, v7}, LW/a;->b(IJ)V

    iget-object v0, p0, Lc/c;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v1, v2

    :goto_29
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_43

    iget v0, p0, Lc/c;->i:I

    if-ge v1, v0, :cond_43

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LW/a;

    invoke-virtual {v3, v10, v0}, LW/a;->a(ILW/a;)V

    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_29

    :cond_43
    move v0, v1

    move-object v1, v3

    :goto_45
    iget v3, p0, Lc/c;->i:I

    if-ge v0, v3, :cond_7c

    iget-object v3, p0, Lc/c;->h:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_7c

    new-instance v4, LW/a;

    sget-object v3, Lk/a;->G:LW/d;

    invoke-direct {v4, v3}, LW/a;-><init>(LW/d;)V

    invoke-virtual {v4, v5, v6, v7}, LW/a;->b(IJ)V

    iget-object v3, p0, Lc/c;->h:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v3, v0

    :goto_62
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7d

    iget v0, p0, Lc/c;->i:I

    if-ge v3, v0, :cond_7d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LW/a;

    invoke-virtual {v4, v9, v0}, LW/a;->a(ILW/a;)V

    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_62

    :cond_7c
    move v3, v0

    :cond_7d
    if-lez v3, :cond_80

    move v2, v5

    :cond_80
    if-eqz v2, :cond_a2

    new-instance v0, LW/a;

    sget-object v3, Lk/a;->ap:LW/d;

    invoke-direct {v0, v3}, LW/a;-><init>(LW/d;)V

    new-instance v3, LW/a;

    sget-object v6, Lk/a;->c:LW/d;

    invoke-direct {v3, v6}, LW/a;-><init>(LW/d;)V

    if-eqz v1, :cond_95

    invoke-virtual {v3, v5, v1}, LW/a;->b(ILW/a;)V

    :cond_95
    if-eqz v4, :cond_9a

    invoke-virtual {v3, v9, v4}, LW/a;->b(ILW/a;)V

    :cond_9a
    invoke-virtual {v0, v10, v3}, LW/a;->a(ILW/a;)V

    iget-object v1, p0, Lc/c;->c:Li/E;

    invoke-interface {v1, v0}, Li/E;->b(LW/a;)V

    :cond_a2
    return v2

    :cond_a3
    move-object v1, v4

    move v0, v2

    goto :goto_45
.end method


# virtual methods
.method a(JZ)J
    .registers 8

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x3fe0

    sub-double/2addr v0, v2

    const-wide/high16 v2, 0x4000

    mul-double/2addr v0, v2

    const-wide v2, 0x41224f8000000000L

    mul-double/2addr v0, v2

    double-to-long v2, v0

    if-eqz p3, :cond_19

    const-wide/32 v0, 0x5265c00

    :goto_16
    add-long/2addr v0, p1

    add-long/2addr v0, v2

    return-wide v0

    :cond_19
    sget-wide v0, Lc/c;->a:J

    goto :goto_16
.end method

.method public a()V
    .registers 1

    invoke-direct {p0}, Lc/c;->k()V

    return-void
.end method

.method public a(I)V
    .registers 4

    const/4 v0, 0x4

    if-eq p1, v0, :cond_4

    :goto_3
    return-void

    :cond_4
    sget-object v0, Lc/d;->a:[I

    iget-object v1, p0, Lc/c;->m:Lc/e;

    invoke-virtual {v1}, Lc/e;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1e

    goto :goto_3

    :pswitch_12
    invoke-direct {p0}, Lc/c;->e()V

    goto :goto_3

    :pswitch_16
    invoke-direct {p0}, Lc/c;->c()V

    goto :goto_3

    :pswitch_1a
    invoke-direct {p0}, Lc/c;->j()V

    goto :goto_3

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_12
        :pswitch_16
        :pswitch_1a
    .end packed-switch
.end method

.method public a(LW/a;)V
    .registers 6

    const/4 v2, 0x5

    iget-object v0, p0, Lc/c;->m:Lc/e;

    sget-object v1, Lc/e;->b:Lc/e;

    if-ne v0, v1, :cond_2a

    iget-object v0, p0, Lc/c;->c:Li/E;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Li/E;->a(I)V

    invoke-static {p1}, Ll/b;->a(LW/a;)Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-virtual {p1, v2}, LW/a;->h(I)Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lc/c;->f:Li/C;

    invoke-virtual {p1, v2}, LW/a;->f(I)LW/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Li/C;->a(LW/a;)V

    invoke-direct {p0}, Lc/c;->g()V

    :cond_25
    :goto_25
    return-void

    :cond_26
    invoke-direct {p0}, Lc/c;->c()V

    goto :goto_25

    :cond_2a
    iget-object v0, p0, Lc/c;->m:Lc/e;

    sget-object v1, Lc/e;->c:Lc/e;

    if-ne v0, v1, :cond_25

    iget-object v0, p0, Lc/c;->d:Lc/m;

    const/4 v1, 0x0

    iget-object v2, p0, Lc/c;->c:Li/E;

    invoke-interface {v2}, Li/E;->b()J

    move-result-wide v2

    invoke-virtual {v0, p1, v1, v2, v3}, Lc/m;->a(LW/a;ZJ)V

    iget-object v0, p0, Lc/c;->e:Lc/p;

    invoke-virtual {v0, p1}, Lc/p;->a(LW/a;)V

    invoke-static {p1}, Ll/b;->a(LW/a;)Z

    move-result v0

    if-eqz v0, :cond_4d

    iget v0, p0, Lc/c;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lc/c;->k:I

    :cond_4d
    invoke-direct {p0}, Lc/c;->i()Z

    goto :goto_25
.end method

.method a(Lc/t;Lc/t;)V
    .registers 14

    const/4 v2, 0x0

    iget-object v0, p0, Lc/c;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lc/c;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iput v2, p0, Lc/c;->k:I

    iget-object v0, p0, Lc/c;->c:Li/E;

    invoke-interface {v0}, Li/E;->b()J

    move-result-wide v3

    if-eqz p1, :cond_57

    iget-object v0, p0, Lc/c;->f:Li/C;

    invoke-virtual {v0}, Li/C;->d()I

    move-result v5

    invoke-virtual {p1}, Lc/t;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_23
    :goto_23
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_57

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/b;

    invoke-virtual {v1}, Lc/b;->c()I

    move-result v1

    if-ge v1, v5, :cond_4d

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lc/m;->a(Ljava/lang/String;)LW/a;

    move-result-object v0

    if-eqz v0, :cond_23

    iget-object v1, p0, Lc/c;->g:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_23

    :cond_4d
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/b;

    invoke-virtual {v0, v3, v4}, Lc/b;->b(J)V

    goto :goto_23

    :cond_57
    iget-object v0, p0, Lc/c;->f:Li/C;

    invoke-virtual {v0}, Li/C;->e()I

    move-result v5

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    if-eqz p2, :cond_a9

    invoke-virtual {p2}, Lc/t;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_6c
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/b;

    invoke-virtual {v1}, Lc/b;->c()I

    move-result v1

    if-ge v1, v5, :cond_9f

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v8, p0, Lc/c;->h:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lc/c;->a(J)LW/a;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_6c

    :cond_9f
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/b;

    invoke-virtual {v0, v3, v4}, Lc/b;->b(J)V

    goto :goto_6c

    :cond_a9
    iget-object v0, p0, Lc/c;->c:Li/E;

    invoke-interface {v0}, Li/E;->a()J

    move-result-wide v3

    iget-object v0, p0, Lc/c;->e:Lc/p;

    if-eqz v0, :cond_10b

    iget-object v0, p0, Lc/c;->e:Lc/p;

    invoke-virtual {v0}, Lc/p;->b()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_bd
    :goto_bd
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/r;

    invoke-virtual {v1}, Lc/r;->b()I

    move-result v1

    if-ge v1, v5, :cond_fd

    const/4 v1, 0x1

    :goto_e0
    if-eqz v1, :cond_ff

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v6, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_ff

    iget-object v0, p0, Lc/c;->h:Ljava/util/List;

    invoke-direct {p0, v8, v9}, Lc/c;->a(J)LW/a;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_bd

    :cond_fd
    move v1, v2

    goto :goto_e0

    :cond_ff
    if-nez v1, :cond_bd

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/r;

    invoke-virtual {v0, v3, v4}, Lc/r;->a(J)V

    goto :goto_bd

    :cond_10b
    iget-object v0, p0, Lc/c;->f:Li/C;

    invoke-virtual {v0}, Li/C;->h()I

    move-result v0

    iput v0, p0, Lc/c;->i:I

    iget-object v0, p0, Lc/c;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lc/c;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    int-to-double v1, v0

    const-wide/high16 v3, 0x3ff0

    mul-double/2addr v1, v3

    iget v3, p0, Lc/c;->i:I

    int-to-double v3, v3

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    iput v1, p0, Lc/c;->j:I

    if-lez v0, :cond_131

    :cond_131
    return-void
.end method

.method b()J
    .registers 6

    iget-object v0, p0, Lc/c;->d:Lc/m;

    invoke-virtual {v0}, Lc/m;->a()J

    move-result-wide v0

    iget-object v2, p0, Lc/c;->d:Lc/m;

    invoke-virtual {v2}, Lc/m;->b()Z

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lc/c;->a(JZ)J

    move-result-wide v0

    iget-object v2, p0, Lc/c;->e:Lc/p;

    invoke-virtual {v2}, Lc/p;->d()J

    move-result-wide v2

    iget-object v4, p0, Lc/c;->e:Lc/p;

    invoke-virtual {v4}, Lc/p;->e()Z

    move-result v4

    invoke-virtual {p0, v2, v3, v4}, Lc/c;->a(JZ)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method
