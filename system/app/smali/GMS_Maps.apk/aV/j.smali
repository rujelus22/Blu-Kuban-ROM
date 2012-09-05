.class public LaV/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LaV/i;

.field private b:Z

.field private c:Lap/d;


# direct methods
.method protected constructor <init>(LaV/i;)V
    .registers 3

    iput-object p1, p0, LaV/j;->a:LaV/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, LaV/j;->b:Z

    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, LaV/j;->b:Z

    if-nez v0, :cond_b

    const/4 v0, 0x1

    iput-boolean v0, p0, LaV/j;->b:Z

    invoke-virtual {p0}, LaV/j;->run()V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    :cond_b
    monitor-exit p0

    return-void

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized run()V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, LaV/j;->a:LaV/i;

    invoke-static {v0}, LaV/i;->a(LaV/i;)LaV/k;

    move-result-object v0

    if-eqz v0, :cond_44

    iget-object v0, p0, LaV/j;->a:LaV/i;

    invoke-static {v0}, LaV/i;->b(LaV/i;)Ljava/util/LinkedList;

    move-result-object v0

    iget-object v1, p0, LaV/j;->a:LaV/i;

    invoke-static {v1}, LaV/i;->a(LaV/i;)LaV/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v0

    iget-object v1, p0, LaV/j;->a:LaV/i;

    invoke-static {v1}, LaV/i;->a(LaV/i;)LaV/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Lat/h;->c(Lat/g;)V

    iget-object v0, p0, LaV/j;->a:LaV/i;

    const/4 v1, 0x0

    invoke-static {v0, v1}, LaV/i;->a(LaV/i;LaV/k;)LaV/k;

    new-instance v0, Lap/d;

    invoke-static {}, Lcom/google/googlenav/bD;->a()Lap/c;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lap/d;-><init>(Lap/c;Ljava/lang/Runnable;)V

    iput-object v0, p0, LaV/j;->c:Lap/d;

    iget-object v0, p0, LaV/j;->c:Lap/d;

    sget-wide v1, LaV/i;->b:J

    invoke-virtual {v0, v1, v2}, Lap/d;->a(J)V

    iget-object v0, p0, LaV/j;->c:Lap/d;

    invoke-virtual {v0}, Lap/d;->g()V
    :try_end_42
    .catchall {:try_start_1 .. :try_end_42} :catchall_48

    :goto_42
    monitor-exit p0

    return-void

    :cond_44
    const/4 v0, 0x0

    :try_start_45
    iput-boolean v0, p0, LaV/j;->b:Z
    :try_end_47
    .catchall {:try_start_45 .. :try_end_47} :catchall_48

    goto :goto_42

    :catchall_48
    move-exception v0

    monitor-exit p0

    throw v0
.end method
