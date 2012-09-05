.class public LaE/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static volatile g:LaE/h;


# instance fields
.field a:Ljava/util/List;

.field b:Z

.field c:Z

.field d:Z

.field private e:LaE/j;

.field private f:LaE/j;


# direct methods
.method public constructor <init>(ZLjava/util/List;)V
    .registers 7

    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, LaE/k;

    invoke-direct {v2, v3}, LaE/k;-><init>(LaE/i;)V

    iput-object v2, p0, LaE/h;->e:LaE/j;

    new-instance v2, LaE/k;

    invoke-direct {v2, v3}, LaE/k;-><init>(LaE/i;)V

    iput-object v2, p0, LaE/h;->f:LaE/j;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, LaE/h;->a:Ljava/util/List;

    iput-boolean v1, p0, LaE/h;->b:Z

    iput-boolean v0, p0, LaE/h;->c:Z

    iput-boolean v0, p0, LaE/h;->d:Z

    if-nez p1, :cond_2f

    const-string v2, "foo"

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    :cond_2f
    move v0, v1

    :cond_30
    if-nez v0, :cond_33

    :cond_32
    :goto_32
    return-void

    :cond_33
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_32

    invoke-static {p2}, LK/bR;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, LaE/h;->a:Ljava/util/List;

    invoke-direct {p0}, LaE/h;->B()V

    goto :goto_32
.end method

.method private B()V
    .registers 3

    iget-object v0, p0, LaE/h;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaE/c;

    invoke-virtual {v0, p0}, LaE/c;->a(LaE/h;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public static a()LaE/h;
    .registers 1

    sget-object v0, LaE/h;->g:LaE/h;

    return-object v0
.end method

.method private static a(LaJ/B;)LaJ/B;
    .registers 2

    invoke-static {p0}, LaE/n;->e(LaJ/B;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {}, LaE/n;->k()LaE/n;

    move-result-object v0

    invoke-virtual {v0, p0}, LaE/n;->d(LaJ/B;)LaJ/B;

    move-result-object p0

    :cond_e
    return-object p0
.end method

.method public static a(LaE/h;)V
    .registers 1

    sput-object p0, LaE/h;->g:LaE/h;

    return-void
.end method

.method private a(LaE/c;)Z
    .registers 3

    invoke-virtual {p0}, LaE/h;->w()LaE/c;

    move-result-object v0

    if-eq v0, p1, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method

.method protected static a(LaE/c;LaE/c;)Z
    .registers 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_6

    move v0, v1

    :cond_5
    :goto_5
    return v0

    :cond_6
    if-nez p1, :cond_d

    invoke-virtual {p0}, LaE/c;->r()Z

    move-result v0

    goto :goto_5

    :cond_d
    iget-wide v2, p0, LaE/c;->c:J

    iget-wide v4, p1, LaE/c;->c:J

    const-wide/16 v6, 0x2af8

    add-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-gtz v2, :cond_5

    invoke-virtual {p0}, LaE/c;->o()I

    move-result v2

    invoke-virtual {p1}, LaE/c;->o()I

    move-result v3

    if-lt v2, v3, :cond_5

    move v0, v1

    goto :goto_5
.end method

.method public static b()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, LaE/h;->g:LaE/h;

    return-void
.end method


# virtual methods
.method public A()Lt/y;
    .registers 2

    invoke-virtual {p0}, LaE/h;->w()LaE/c;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, LaE/c;->A()Lt/y;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public a(ILaE/c;)V
    .registers 4

    invoke-virtual {p0}, LaE/h;->w()LaE/c;

    move-result-object v0

    if-eqz v0, :cond_9

    if-eq v0, p2, :cond_9

    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, LaE/h;->e:LaE/j;

    invoke-interface {v0, p1, p0}, LaE/j;->a(ILaE/h;)V

    iget-object v0, p0, LaE/h;->f:LaE/j;

    invoke-interface {v0, p1, p0}, LaE/j;->a(ILaE/h;)V

    goto :goto_8
.end method

.method public a(LaE/m;)V
    .registers 3

    iget-boolean v0, p0, LaE/h;->c:Z

    if-eqz v0, :cond_4

    :cond_4
    iget-object v0, p0, LaE/h;->e:LaE/j;

    invoke-interface {v0, p1}, LaE/j;->a(LaE/m;)V

    return-void
.end method

.method public a(LaJ/B;LaE/c;)V
    .registers 4

    invoke-direct {p0, p2}, LaE/h;->a(LaE/c;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, LaE/h;->e:LaE/j;

    invoke-interface {v0, p1, p0}, LaE/j;->a(LaJ/B;LaE/h;)V

    :cond_b
    return-void
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, LaE/h;->d:Z

    return-void
.end method

.method public b(LaE/m;)V
    .registers 3

    iget-boolean v0, p0, LaE/h;->c:Z

    if-eqz v0, :cond_4

    :cond_4
    iget-object v0, p0, LaE/h;->f:LaE/j;

    invoke-interface {v0, p1}, LaE/j;->a(LaE/m;)V

    return-void
.end method

.method public b(LaJ/B;LaE/c;)V
    .registers 4

    invoke-direct {p0, p2}, LaE/h;->a(LaE/c;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, LaE/h;->f:LaE/j;

    invoke-interface {v0, p1, p0}, LaE/j;->a(LaJ/B;LaE/h;)V

    :cond_b
    return-void
.end method

.method public c()Ljava/util/List;
    .registers 2

    iget-object v0, p0, LaE/h;->a:Ljava/util/List;

    invoke-static {v0}, LK/bR;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public c(LaE/m;)V
    .registers 3

    iget-object v0, p0, LaE/h;->e:LaE/j;

    invoke-interface {v0, p1}, LaE/j;->b(LaE/m;)V

    return-void
.end method

.method public d()Lam/b;
    .registers 4

    iget-object v0, p0, LaE/h;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaE/c;

    invoke-virtual {v0}, LaE/c;->q()Lam/b;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v0}, LaE/c;->q()Lam/b;

    move-result-object v0

    :goto_1c
    return-object v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method public e()I
    .registers 2

    invoke-virtual {p0}, LaE/h;->w()LaE/c;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, LaE/c;->m()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, -0x1

    goto :goto_a
.end method

.method public f()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, LaE/h;->w()LaE/c;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, LaE/c;->a()Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const-string v0, "none"

    goto :goto_a
.end method

.method public g()I
    .registers 3

    invoke-virtual {p0}, LaE/h;->w()LaE/c;

    move-result-object v0

    instance-of v1, v0, LaE/a;

    if-eqz v1, :cond_f

    check-cast v0, LaE/a;

    invoke-virtual {v0}, LaE/a;->g()I

    move-result v0

    :goto_e
    return v0

    :cond_f
    const/4 v0, -0x1

    goto :goto_e
.end method

.method public h()I
    .registers 2

    invoke-virtual {p0}, LaE/h;->w()LaE/c;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, LaE/c;->n()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, -0x1

    goto :goto_a
.end method

.method public i()I
    .registers 2

    invoke-virtual {p0}, LaE/h;->w()LaE/c;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, LaE/c;->o()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const v0, 0x1869f

    goto :goto_a
.end method

.method public j()Z
    .registers 2

    invoke-virtual {p0}, LaE/h;->w()LaE/c;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public k()Z
    .registers 6

    const/4 v2, 0x0

    iget-object v0, p0, LaE/h;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :cond_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaE/c;

    invoke-virtual {v0}, LaE/c;->h()Z

    move-result v4

    or-int/2addr v1, v4

    invoke-virtual {v0}, LaE/c;->h()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {v0}, LaE/c;->i()Z

    move-result v0

    if-nez v0, :cond_8

    :goto_25
    return v2

    :cond_26
    move v2, v1

    goto :goto_25
.end method

.method public l()Z
    .registers 4

    iget-object v0, p0, LaE/h;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaE/c;

    invoke-virtual {v0}, LaE/c;->h()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v0}, LaE/c;->k()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-virtual {v0}, LaE/c;->j()Z

    move-result v0

    if-nez v0, :cond_6

    :cond_24
    const/4 v0, 0x1

    :goto_25
    return v0

    :cond_26
    const/4 v0, 0x0

    goto :goto_25
.end method

.method public m()Z
    .registers 2

    invoke-virtual {p0}, LaE/h;->w()LaE/c;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {v0}, LaE/c;->s()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public declared-synchronized n()V
    .registers 3

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, LaE/h;->b:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, LaE/h;->c:Z

    iget-object v0, p0, LaE/h;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaE/c;

    invoke-virtual {v0}, LaE/c;->u()V
    :try_end_1c
    .catchall {:try_start_2 .. :try_end_1c} :catchall_1d

    goto :goto_d

    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_20
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized o()V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, LaE/h;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaE/c;

    invoke-virtual {v0}, LaE/c;->e()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {v0}, LaE/c;->u()V
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1d

    goto :goto_7

    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_20
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized p()V
    .registers 3

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, LaE/h;->b:Z

    iget-object v0, p0, LaE/h;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaE/c;

    invoke-virtual {v0}, LaE/c;->t()V
    :try_end_19
    .catchall {:try_start_2 .. :try_end_19} :catchall_1a

    goto :goto_a

    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1d
    monitor-exit p0

    return-void
.end method

.method public q()LaJ/B;
    .registers 2

    invoke-virtual {p0}, LaE/h;->w()LaE/c;

    invoke-virtual {p0}, LaE/h;->r()LaJ/B;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-static {v0}, LaE/h;->a(LaJ/B;)LaJ/B;

    move-result-object v0

    :goto_d
    return-object v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public r()LaJ/B;
    .registers 2

    invoke-virtual {p0}, LaE/h;->w()LaE/c;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, LaE/c;->v()LaJ/B;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public run()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, LaE/h;->b:Z

    if-eqz v0, :cond_7

    monitor-exit p0

    :goto_6
    return-void

    :cond_7
    iget-object v0, p0, LaE/h;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaE/c;

    invoke-virtual {v0}, LaE/c;->u()V

    goto :goto_d

    :catchall_1d
    move-exception v0

    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_1d

    throw v0

    :cond_20
    :try_start_20
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1d

    goto :goto_6
.end method

.method public s()LaE/l;
    .registers 4

    invoke-virtual {p0}, LaE/h;->r()LaJ/B;

    move-result-object v1

    if-eqz v1, :cond_1c

    new-instance v0, LaE/l;

    invoke-virtual {p0}, LaE/h;->f()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, LaE/l;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, LaE/l;->a(LaJ/B;)V

    invoke-virtual {p0}, LaE/h;->w()LaE/c;

    move-result-object v1

    iget-wide v1, v1, LaE/c;->c:J

    invoke-virtual {v0, v1, v2}, LaE/l;->a(J)V

    :goto_1b
    return-object v0

    :cond_1c
    iget-object v0, p0, LaE/h;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaE/c;

    invoke-virtual {v0}, LaE/c;->d()LaE/l;

    move-result-object v0

    if-eqz v0, :cond_22

    goto :goto_1b

    :cond_35
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public t()Z
    .registers 4

    const/4 v1, 0x0

    invoke-virtual {p0}, LaE/h;->w()LaE/c;

    move-result-object v0

    if-nez v0, :cond_9

    move v0, v1

    :goto_8
    return v0

    :cond_9
    invoke-virtual {v0}, LaE/c;->s()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-virtual {v0}, LaE/c;->x()Z

    move-result v0

    goto :goto_8

    :cond_14
    iget-object v0, p0, LaE/h;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaE/c;

    invoke-virtual {v0}, LaE/c;->x()Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_8

    :cond_2e
    move v0, v1

    goto :goto_8
.end method

.method public u()V
    .registers 3

    iget-object v0, p0, LaE/h;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaE/c;

    invoke-virtual {v0}, LaE/c;->w()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public v()Z
    .registers 4

    const/4 v1, 0x0

    iget-boolean v0, p0, LaE/h;->b:Z

    if-eqz v0, :cond_7

    move v0, v1

    :goto_6
    return v0

    :cond_7
    invoke-virtual {p0}, LaE/h;->w()LaE/c;

    move-result-object v0

    if-nez v0, :cond_f

    move v0, v1

    goto :goto_6

    :cond_f
    invoke-virtual {v0}, LaE/c;->s()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-virtual {v0}, LaE/c;->y()Z

    move-result v0

    goto :goto_6

    :cond_1a
    iget-object v0, p0, LaE/h;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaE/c;

    invoke-virtual {v0}, LaE/c;->y()Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 v0, 0x1

    goto :goto_6

    :cond_34
    move v0, v1

    goto :goto_6
.end method

.method public w()LaE/c;
    .registers 5

    const/4 v1, 0x0

    iget-object v0, p0, LaE/h;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaE/c;

    invoke-static {v0, v1}, LaE/h;->a(LaE/c;LaE/c;)Z

    move-result v3

    if-eqz v3, :cond_1c

    :goto_19
    move-object v1, v0

    goto :goto_7

    :cond_1b
    return-object v1

    :cond_1c
    move-object v0, v1

    goto :goto_19
.end method

.method public x()Z
    .registers 2

    iget-boolean v0, p0, LaE/h;->d:Z

    return v0
.end method

.method public y()Z
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0}, LaE/h;->m()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {p0}, LaE/h;->h()I

    move-result v1

    if-lt v1, v0, :cond_e

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public z()LaE/l;
    .registers 2

    invoke-virtual {p0}, LaE/h;->w()LaE/c;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, LaE/c;->B()LaE/l;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method
