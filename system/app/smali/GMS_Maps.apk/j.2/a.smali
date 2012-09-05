.class public Lj/a;
.super Ljava/lang/Object;


# instance fields
.field final a:Lj/b;

.field final b:Lj/e;

.field final c:Lj/e;

.field final d:Lj/e;

.field final e:Li/E;

.field volatile f:Z


# direct methods
.method public constructor <init>(Li/E;Li/C;)V
    .registers 10

    new-instance v0, Lj/b;

    invoke-interface {p1}, Li/E;->c()J

    move-result-wide v3

    invoke-interface {p1}, Li/E;->a()J

    move-result-wide v5

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lj/b;-><init>(Li/A;Li/C;JJ)V

    invoke-direct {p0, p1, v0}, Lj/a;-><init>(Li/E;Lj/b;)V

    return-void
.end method

.method constructor <init>(Li/E;Lj/b;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lj/a;->f:Z

    invoke-interface {p1}, Li/E;->a()J

    move-result-wide v0

    iput-object p1, p0, Lj/a;->e:Li/E;

    iput-object p2, p0, Lj/a;->a:Lj/b;

    invoke-virtual {p2, v0, v1}, Lj/b;->a(J)V

    invoke-virtual {p2, v0, v1}, Lj/b;->b(J)V

    invoke-virtual {p2}, Lj/b;->a()Lj/e;

    move-result-object v0

    iput-object v0, p0, Lj/a;->b:Lj/e;

    invoke-virtual {p2}, Lj/b;->b()Lj/e;

    move-result-object v0

    iput-object v0, p0, Lj/a;->c:Lj/e;

    invoke-virtual {p2}, Lj/b;->c()Lj/e;

    move-result-object v0

    iput-object v0, p0, Lj/a;->d:Lj/e;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lj/a;->a:Lj/b;

    invoke-virtual {v0}, Lj/b;->d()V

    return-void
.end method

.method public declared-synchronized a(J)V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lj/a;->f:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_18

    if-nez v0, :cond_7

    :goto_5
    monitor-exit p0

    return-void

    :cond_7
    :try_start_7
    iget-object v0, p0, Lj/a;->e:Li/E;

    invoke-interface {v0}, Li/E;->a()J

    move-result-wide v0

    iget-object v2, p0, Lj/a;->b:Lj/e;

    invoke-virtual {v2, p1, p2, v0, v1}, Lj/e;->b(JJ)Z

    iget-object v2, p0, Lj/a;->a:Lj/b;

    invoke-virtual {v2, v0, v1}, Lj/b;->b(J)V
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_18

    goto :goto_5

    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Li/C;)V
    .registers 6

    iget-object v0, p0, Lj/a;->e:Li/E;

    invoke-interface {v0}, Li/E;->a()J

    move-result-wide v0

    iget-object v2, p0, Lj/a;->b:Lj/e;

    if-eqz v2, :cond_13

    iget-object v2, p0, Lj/a;->b:Lj/e;

    invoke-virtual {p1}, Li/C;->i()Li/D;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v1}, Lj/e;->a(Li/D;J)V

    :cond_13
    iget-object v2, p0, Lj/a;->c:Lj/e;

    if-eqz v2, :cond_20

    iget-object v2, p0, Lj/a;->c:Lj/e;

    invoke-virtual {p1}, Li/C;->j()Li/D;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v1}, Lj/e;->a(Li/D;J)V

    :cond_20
    iget-object v2, p0, Lj/a;->d:Lj/e;

    if-eqz v2, :cond_2d

    iget-object v2, p0, Lj/a;->d:Lj/e;

    invoke-virtual {p1}, Li/C;->k()Li/D;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v1}, Lj/e;->a(Li/D;J)V

    :cond_2d
    return-void
.end method

.method public a(ZZ)V
    .registers 3

    iput-boolean p2, p0, Lj/a;->f:Z

    return-void
.end method

.method public declared-synchronized a(JZ)Z
    .registers 10

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lj/a;->f:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_17

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_6
    monitor-exit p0

    return v0

    :cond_8
    :try_start_8
    iget-object v0, p0, Lj/a;->b:Lj/e;

    iget-object v1, p0, Lj/a;->e:Li/E;

    invoke-interface {v1}, Li/E;->a()J

    move-result-wide v3

    move-wide v1, p1

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lj/e;->a(JJZ)Z
    :try_end_15
    .catchall {:try_start_8 .. :try_end_15} :catchall_17

    move-result v0

    goto :goto_6

    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, Lj/a;->a:Lj/b;

    invoke-virtual {v0}, Lj/b;->e()V

    return-void
.end method

.method public b(J)V
    .registers 6

    iget-object v0, p0, Lj/a;->e:Li/E;

    invoke-interface {v0}, Li/E;->a()J

    move-result-wide v0

    iget-object v2, p0, Lj/a;->a:Lj/b;

    invoke-virtual {v2}, Lj/b;->b()Lj/e;

    move-result-object v2

    invoke-virtual {v2, p1, p2, v0, v1}, Lj/e;->b(JJ)Z

    iget-object v2, p0, Lj/a;->a:Lj/b;

    invoke-virtual {v2, v0, v1}, Lj/b;->b(J)V

    return-void
.end method

.method public b(JZ)Z
    .registers 10

    iget-object v0, p0, Lj/a;->a:Lj/b;

    invoke-virtual {v0}, Lj/b;->b()Lj/e;

    move-result-object v0

    iget-object v1, p0, Lj/a;->e:Li/E;

    invoke-interface {v1}, Li/E;->a()J

    move-result-wide v3

    move-wide v1, p1

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lj/e;->a(JJZ)Z

    move-result v0

    return v0
.end method

.method public c()LW/a;
    .registers 6

    iget-object v0, p0, Lj/a;->b:Lj/e;

    invoke-virtual {v0}, Lj/e;->a()LW/a;

    move-result-object v1

    iget-object v0, p0, Lj/a;->c:Lj/e;

    invoke-virtual {v0}, Lj/e;->a()LW/a;

    move-result-object v2

    iget-object v0, p0, Lj/a;->d:Lj/e;

    invoke-virtual {v0}, Lj/e;->a()LW/a;

    move-result-object v3

    if-nez v1, :cond_1a

    if-nez v2, :cond_1a

    if-nez v3, :cond_1a

    const/4 v0, 0x0

    :cond_19
    :goto_19
    return-object v0

    :cond_1a
    new-instance v0, LW/a;

    sget-object v4, Lk/a;->a:LW/d;

    invoke-direct {v0, v4}, LW/a;-><init>(LW/d;)V

    if-eqz v1, :cond_27

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v1}, LW/a;->b(ILW/a;)V

    :cond_27
    if-eqz v2, :cond_2d

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, LW/a;->b(ILW/a;)V

    :cond_2d
    if-eqz v3, :cond_19

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v3}, LW/a;->b(ILW/a;)V

    goto :goto_19
.end method

.method public c(J)V
    .registers 6

    iget-object v0, p0, Lj/a;->e:Li/E;

    invoke-interface {v0}, Li/E;->a()J

    move-result-wide v0

    iget-object v2, p0, Lj/a;->a:Lj/b;

    invoke-virtual {v2}, Lj/b;->c()Lj/e;

    move-result-object v2

    invoke-virtual {v2, p1, p2, v0, v1}, Lj/e;->b(JJ)Z

    iget-object v2, p0, Lj/a;->a:Lj/b;

    invoke-virtual {v2, v0, v1}, Lj/b;->b(J)V

    return-void
.end method

.method public c(JZ)Z
    .registers 10

    iget-object v0, p0, Lj/a;->a:Lj/b;

    invoke-virtual {v0}, Lj/b;->c()Lj/e;

    move-result-object v0

    iget-object v1, p0, Lj/a;->e:Li/E;

    invoke-interface {v1}, Li/E;->a()J

    move-result-wide v3

    move-wide v1, p1

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lj/e;->a(JJZ)Z

    move-result v0

    return v0
.end method
