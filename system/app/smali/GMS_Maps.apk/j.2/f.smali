.class final Lj/f;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I


# direct methods
.method constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lj/f;->a:I

    iput v0, p0, Lj/f;->b:I

    return-void
.end method

.method private declared-synchronized b()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput v0, p0, Lj/f;->a:I

    const/4 v0, 0x0

    iput v0, p0, Lj/f;->b:I
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized a()LW/a;
    .registers 4

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lj/f;->a:I

    if-nez v0, :cond_b

    const/4 v0, 0x0

    :goto_6
    invoke-direct {p0}, Lj/f;->b()V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_1f

    monitor-exit p0

    return-object v0

    :cond_b
    :try_start_b
    new-instance v0, LW/a;

    sget-object v1, Lk/a;->B:LW/d;

    invoke-direct {v0, v1}, LW/a;-><init>(LW/d;)V

    const/4 v1, 0x1

    iget v2, p0, Lj/f;->a:I

    invoke-virtual {v0, v1, v2}, LW/a;->g(II)V

    const/4 v1, 0x2

    iget v2, p0, Lj/f;->b:I

    invoke-virtual {v0, v1, v2}, LW/a;->g(II)V
    :try_end_1e
    .catchall {:try_start_b .. :try_end_1e} :catchall_1f

    goto :goto_6

    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Z)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lj/f;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lj/f;->a:I

    if-eqz p1, :cond_f

    iget v0, p0, Lj/f;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lj/f;->b:I
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    :cond_f
    monitor-exit p0

    return-void

    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method
