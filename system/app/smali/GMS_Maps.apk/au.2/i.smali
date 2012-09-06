.class Lau/i;
.super Lcom/google/android/maps/driveabout/vector/c;
.source "SourceFile"


# instance fields
.field private b:Z


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/vector/l;)V
    .registers 2
    .parameter

    .prologue
    .line 392
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/c;-><init>(Lcom/google/android/maps/driveabout/vector/l;)V

    .line 393
    return-void
.end method


# virtual methods
.method public declared-synchronized a()I
    .registers 2

    .prologue
    .line 430
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lau/i;->b:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_a

    if-eqz v0, :cond_8

    .line 431
    const/4 v0, 0x0

    .line 433
    :goto_6
    monitor-exit p0

    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_6

    .line 430
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/google/android/maps/driveabout/vector/k;)Lcom/google/android/maps/driveabout/vector/m;
    .registers 3
    .parameter

    .prologue
    .line 422
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lau/i;->b:Z

    if-eqz v0, :cond_9

    .line 423
    iget-object v0, p0, Lau/i;->a:Lcom/google/android/maps/driveabout/vector/l;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_b

    .line 425
    :goto_7
    monitor-exit p0

    return-object v0

    :cond_9
    move-object v0, p0

    goto :goto_7

    .line 422
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/google/android/maps/driveabout/vector/l;)Z
    .registers 8
    .parameter

    .prologue
    .line 405
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lau/i;->b:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_2d

    if-eqz v0, :cond_8

    .line 406
    const/4 v0, 0x0

    .line 411
    :goto_6
    monitor-exit p0

    return v0

    .line 409
    :cond_8
    :try_start_8
    new-instance v0, Lcom/google/android/maps/driveabout/vector/l;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/l;->b()Ln/Q;

    move-result-object v1

    iget-object v2, p0, Lau/i;->a:Lcom/google/android/maps/driveabout/vector/l;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/l;->a()F

    move-result v2

    iget-object v3, p0, Lau/i;->a:Lcom/google/android/maps/driveabout/vector/l;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/l;->d()F

    move-result v3

    iget-object v4, p0, Lau/i;->a:Lcom/google/android/maps/driveabout/vector/l;

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/vector/l;->e()F

    move-result v4

    iget-object v5, p0, Lau/i;->a:Lcom/google/android/maps/driveabout/vector/l;

    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/vector/l;->f()F

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/l;-><init>(Ln/Q;FFFF)V

    iput-object v0, p0, Lau/i;->a:Lcom/google/android/maps/driveabout/vector/l;
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_2d

    .line 411
    const/4 v0, 0x1

    goto :goto_6

    .line 405
    :catchall_2d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()V
    .registers 2

    .prologue
    .line 397
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lau/i;->b:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 398
    monitor-exit p0

    return-void

    .line 397
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method
