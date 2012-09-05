.class LaK/i;
.super Lcom/google/android/maps/driveabout/vector/l;


# instance fields
.field private b:Z


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/vector/u;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/l;-><init>(Lcom/google/android/maps/driveabout/vector/u;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized a()I
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, LaK/i;->b:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_a

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_6
    monitor-exit p0

    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_6

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/google/android/maps/driveabout/vector/t;)Lcom/google/android/maps/driveabout/vector/v;
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, LaK/i;->b:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, LaK/i;->a:Lcom/google/android/maps/driveabout/vector/u;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_b

    :goto_7
    monitor-exit p0

    return-object v0

    :cond_9
    move-object v0, p0

    goto :goto_7

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/google/android/maps/driveabout/vector/u;)Z
    .registers 8

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, LaK/i;->b:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_2d

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_6
    monitor-exit p0

    return v0

    :cond_8
    :try_start_8
    new-instance v0, Lcom/google/android/maps/driveabout/vector/u;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/u;->b()Lt/L;

    move-result-object v1

    iget-object v2, p0, LaK/i;->a:Lcom/google/android/maps/driveabout/vector/u;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/u;->a()F

    move-result v2

    iget-object v3, p0, LaK/i;->a:Lcom/google/android/maps/driveabout/vector/u;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/u;->d()F

    move-result v3

    iget-object v4, p0, LaK/i;->a:Lcom/google/android/maps/driveabout/vector/u;

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/vector/u;->e()F

    move-result v4

    iget-object v5, p0, LaK/i;->a:Lcom/google/android/maps/driveabout/vector/u;

    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/vector/u;->f()F

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/u;-><init>(Lt/L;FFFF)V

    iput-object v0, p0, LaK/i;->a:Lcom/google/android/maps/driveabout/vector/u;
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_2d

    const/4 v0, 0x1

    goto :goto_6

    :catchall_2d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, LaK/i;->b:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method
