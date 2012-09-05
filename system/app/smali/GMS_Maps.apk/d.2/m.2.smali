.class Ld/m;
.super Ljava/lang/Object;

# interfaces
.implements Ld/C;


# instance fields
.field final synthetic a:Ld/h;

.field private final b:Ld/l;

.field private final c:Ld/r;

.field private volatile d:Z

.field private volatile e:Ljava/util/List;


# direct methods
.method private constructor <init>(Ld/h;Ld/l;Ld/r;)V
    .registers 5

    iput-object p1, p0, Ld/m;->a:Ld/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ld/m;->d:Z

    invoke-static {}, Ld/ax;->c()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ld/m;->e:Ljava/util/List;

    iput-object p2, p0, Ld/m;->b:Ld/l;

    iput-object p3, p0, Ld/m;->c:Ld/r;

    return-void
.end method

.method synthetic constructor <init>(Ld/h;Ld/l;Ld/r;Ld/i;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Ld/m;-><init>(Ld/h;Ld/l;Ld/r;)V

    return-void
.end method

.method static synthetic a(Ld/m;)Ld/r;
    .registers 2

    iget-object v0, p0, Ld/m;->c:Ld/r;

    return-object v0
.end method

.method private declared-synchronized a(Ljava/lang/String;I)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ld/m;->b:Ld/l;

    invoke-virtual {v0, p2}, Ld/l;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ld/m;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return-void

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized b(Ljava/lang/String;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Ld/m;->d:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_2e

    if-eqz v0, :cond_7

    :cond_5
    :goto_5
    monitor-exit p0

    return-void

    :cond_7
    :try_start_7
    iget-object v0, p0, Ld/m;->b:Ld/l;

    invoke-virtual {v0}, Ld/l;->d()Ld/aw;

    move-result-object v0

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    iput-boolean v1, p0, Ld/m;->d:Z

    iget-object v1, p0, Ld/m;->a:Ld/h;

    invoke-static {v1}, Ld/h;->i(Ld/h;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    iget-object v1, p0, Ld/m;->c:Ld/r;

    if-eqz v1, :cond_5

    iget-object v1, p0, Ld/m;->a:Ld/h;

    invoke-static {v1}, Ld/h;->f(Ld/h;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Ld/q;

    invoke-direct {v2, p0, p1, v0}, Ld/q;-><init>(Ld/m;Ljava/lang/String;Ld/aw;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2d
    .catchall {:try_start_7 .. :try_end_2d} :catchall_2e

    goto :goto_5

    :catchall_2e
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a()V
    .registers 1

    return-void
.end method

.method public a(I)V
    .registers 2

    return-void
.end method

.method public a(ILjava/lang/String;)V
    .registers 3

    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    return-void
.end method

.method public a(LW/a;)V
    .registers 2

    return-void
.end method

.method public a(Ld/aq;)V
    .registers 2

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public declared-synchronized a(Ljava/lang/String;ILW/a;)V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ld/m;->b:Ld/l;

    const/4 v1, 0x1

    invoke-static {v0, p2, v1}, Ld/l;->a(Ld/l;IZ)V

    iget-object v0, p0, Ld/m;->c:Ld/r;

    if-eqz v0, :cond_19

    iget-object v0, p0, Ld/m;->a:Ld/h;

    invoke-static {v0}, Ld/h;->f(Ld/h;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Ld/o;

    invoke-direct {v1, p0, p2, p3}, Ld/o;-><init>(Ld/m;ILW/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_19
    iget-object v0, p0, Ld/m;->a:Ld/h;

    invoke-static {v0}, Ld/h;->h(Ld/h;)Z

    move-result v0

    if-nez v0, :cond_3a

    invoke-static {p1}, Ld/ax;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3a

    iget-object v0, p0, Ld/m;->b:Ld/l;

    invoke-virtual {v0, p1}, Ld/l;->b(Ljava/lang/String;)V

    iget-object v0, p0, Ld/m;->a:Ld/h;

    invoke-static {v0, p1}, Ld/h;->b(Ld/h;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Ld/m;->a:Ld/h;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ld/h;->a(Ld/h;Z)Z

    :cond_3a
    invoke-direct {p0, p1, p2}, Ld/m;->a(Ljava/lang/String;I)V
    :try_end_3d
    .catchall {:try_start_1 .. :try_end_3d} :catchall_3f

    monitor-exit p0

    return-void

    :catchall_3f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/String;ILjava/lang/String;)V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ld/m;->b:Ld/l;

    const/4 v1, 0x0

    invoke-static {v0, p2, v1}, Ld/l;->a(Ld/l;IZ)V

    iget-object v0, p0, Ld/m;->c:Ld/r;

    if-eqz v0, :cond_19

    iget-object v0, p0, Ld/m;->a:Ld/h;

    invoke-static {v0}, Ld/h;->f(Ld/h;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Ld/n;

    invoke-direct {v1, p0, p2, p3}, Ld/n;-><init>(Ld/m;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_19
    invoke-direct {p0, p1, p2}, Ld/m;->a(Ljava/lang/String;I)V
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1e

    monitor-exit p0

    return-void

    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ld/m;->e:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    iget-object v0, p0, Ld/m;->b:Ld/l;

    invoke-virtual {v0}, Ld/l;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Ld/m;->b:Ld/l;

    invoke-static {v1, p2}, Ld/l;->a(Ld/l;Ljava/lang/String;)Ld/aw;

    move-result-object v1

    if-eqz v1, :cond_38

    iget-object v2, p0, Ld/m;->b:Ld/l;

    invoke-virtual {v2, p2}, Ld/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ld/m;->e:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Ld/m;->c:Ld/r;

    if-eqz v3, :cond_38

    iget-object v3, p0, Ld/m;->a:Ld/h;

    invoke-static {v3}, Ld/h;->f(Ld/h;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Ld/p;

    invoke-direct {v4, p0, v0, v2, v1}, Ld/p;-><init>(Ld/m;ILjava/lang/String;Ld/aw;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_38
    invoke-direct {p0, p1}, Ld/m;->b(Ljava/lang/String;)V
    :try_end_3b
    .catchall {:try_start_1 .. :try_end_3b} :catchall_3d

    monitor-exit p0

    return-void

    :catchall_3d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(ZZ)V
    .registers 3

    return-void
.end method

.method public b()V
    .registers 1

    return-void
.end method

.method public c()V
    .registers 1

    return-void
.end method

.method public d()V
    .registers 1

    return-void
.end method

.method public e()V
    .registers 1

    return-void
.end method

.method public f()V
    .registers 1

    return-void
.end method

.method public g()V
    .registers 1

    return-void
.end method

.method public h()V
    .registers 1

    return-void
.end method

.method public declared-synchronized i()V
    .registers 1

    monitor-enter p0

    monitor-exit p0

    return-void
.end method
