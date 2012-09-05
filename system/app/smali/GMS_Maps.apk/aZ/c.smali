.class LaZ/c;
.super Lz/d;


# instance fields
.field final synthetic a:LaZ/b;


# direct methods
.method constructor <init>(LaZ/b;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, LaZ/c;->a:LaZ/b;

    invoke-direct {p0, p2}, Lz/d;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 9

    const-wide/16 v6, 0xbb8

    :cond_2
    :goto_2
    iget-object v0, p0, LaZ/c;->a:LaZ/b;

    invoke-static {v0}, LaZ/b;->a(LaZ/b;)Z

    move-result v0

    if-nez v0, :cond_7a

    iget-object v0, p0, LaZ/c;->a:LaZ/b;

    invoke-static {v0}, LaZ/b;->b(LaZ/b;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_11
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_77

    move-result-wide v2

    :try_start_15
    iget-object v0, p0, LaZ/c;->a:LaZ/b;

    invoke-static {v0}, LaZ/b;->c(LaZ/b;)J

    move-result-wide v4

    sub-long v2, v4, v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_2c

    iget-object v0, p0, LaZ/c;->a:LaZ/b;

    invoke-static {v0}, LaZ/b;->b(LaZ/b;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_2c
    .catchall {:try_start_15 .. :try_end_2c} :catchall_77
    .catch Ljava/lang/InterruptedException; {:try_start_15 .. :try_end_2c} :catch_7d

    :cond_2c
    :goto_2c
    :try_start_2c
    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_77

    iget-object v0, p0, LaZ/c;->a:LaZ/b;

    invoke-static {v0}, LaZ/b;->a(LaZ/b;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, LaZ/c;->a:LaZ/b;

    invoke-static {v2}, LaZ/b;->c(LaZ/b;)J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-gez v2, :cond_57

    iget-object v2, p0, LaZ/c;->a:LaZ/b;

    invoke-static {v2}, LaZ/b;->d(LaZ/b;)LaJ/p;

    move-result-object v2

    invoke-virtual {v2}, LaJ/p;->a()LaJ/D;

    move-result-object v2

    invoke-virtual {v2}, LaJ/D;->c()V

    iget-object v2, p0, LaZ/c;->a:LaZ/b;

    add-long v3, v0, v6

    invoke-static {v2, v3, v4}, LaZ/b;->a(LaZ/b;J)J

    :cond_57
    iget-object v2, p0, LaZ/c;->a:LaZ/b;

    invoke-static {v2}, LaZ/b;->e(LaZ/b;)J

    move-result-wide v2

    add-long/2addr v2, v6

    cmp-long v0, v2, v0

    if-gez v0, :cond_2

    iget-object v0, p0, LaZ/c;->a:LaZ/b;

    invoke-static {v0}, LaZ/b;->f(LaZ/b;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_69
    iget-object v0, p0, LaZ/c;->a:LaZ/b;

    invoke-static {v0}, LaZ/b;->f(LaZ/b;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_72
    .catchall {:try_start_69 .. :try_end_72} :catchall_74
    .catch Ljava/lang/InterruptedException; {:try_start_69 .. :try_end_72} :catch_7b

    :goto_72
    :try_start_72
    monitor-exit v1

    goto :goto_2

    :catchall_74
    move-exception v0

    monitor-exit v1
    :try_end_76
    .catchall {:try_start_72 .. :try_end_76} :catchall_74

    throw v0

    :catchall_77
    move-exception v0

    :try_start_78
    monitor-exit v1
    :try_end_79
    .catchall {:try_start_78 .. :try_end_79} :catchall_77

    throw v0

    :cond_7a
    return-void

    :catch_7b
    move-exception v0

    goto :goto_72

    :catch_7d
    move-exception v0

    goto :goto_2c
.end method
