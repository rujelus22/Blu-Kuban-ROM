.class Lcom/google/android/maps/driveabout/vector/J;
.super Lt/c;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/vector/I;

.field private b:Z

.field private c:I

.field private d:Z

.field private e:Z

.field private f:J


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/vector/I;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 416
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/J;->a:Lcom/google/android/maps/driveabout/vector/I;

    .line 417
    const-string v0, "RenderDrive"

    invoke-direct {p0, v0}, Lt/c;-><init>(Ljava/lang/String;)V

    .line 393
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/J;->b:Z

    .line 399
    sget v0, Lcom/google/android/maps/driveabout/vector/I;->a:I

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/J;->c:I

    .line 402
    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/J;->d:Z

    .line 408
    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/J;->e:Z

    .line 414
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/vector/J;->f:J

    .line 418
    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/vector/J;)Z
    .registers 2
    .parameter

    .prologue
    .line 387
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/J;->e:Z

    return v0
.end method


# virtual methods
.method public declared-synchronized a(I)V
    .registers 3
    .parameter

    .prologue
    .line 459
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/J;->c:I

    if-eq v0, p1, :cond_11

    const/16 v0, 0xf

    if-le p1, v0, :cond_11

    .line 460
    iput p1, p0, Lcom/google/android/maps/driveabout/vector/J;->c:I

    .line 461
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/J;->d:Z

    .line 462
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/J;->interrupt()V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    .line 464
    :cond_11
    monitor-exit p0

    return-void

    .line 459
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(J)V
    .registers 4
    .parameter

    .prologue
    .line 483
    monitor-enter p0

    :try_start_1
    iput-wide p1, p0, Lcom/google/android/maps/driveabout/vector/J;->f:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 484
    monitor-exit p0

    return-void

    .line 483
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()V
    .registers 2

    .prologue
    .line 450
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/J;->a:Lcom/google/android/maps/driveabout/vector/I;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/I;->b:Lcom/google/android/maps/driveabout/vector/K;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/K;->d_()V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    .line 451
    monitor-exit p0

    return-void

    .line 450
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()V
    .registers 2

    .prologue
    .line 454
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/J;->b:Z

    .line 455
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/J;->interrupt()V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    .line 456
    monitor-exit p0

    return-void

    .line 454
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d()I
    .registers 2

    .prologue
    .line 470
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/J;->c:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public e()V
    .registers 2

    .prologue
    .line 474
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/J;->e:Z

    .line 475
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/J;->interrupt()V

    .line 476
    return-void
.end method

.method public declared-synchronized f()V
    .registers 2

    .prologue
    .line 479
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/J;->e:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 480
    monitor-exit p0

    return-void

    .line 479
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized g()J
    .registers 3

    .prologue
    .line 487
    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/google/android/maps/driveabout/vector/J;->f:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-wide v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public n_()V
    .registers 5

    .prologue
    .line 422
    :goto_0
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/J;->b:Z

    if-eqz v0, :cond_36

    .line 425
    :cond_4
    const/4 v0, 0x0

    :try_start_5
    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/J;->d:Z

    .line 426
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/J;->c:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/vector/J;->sleep(J)V
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_d} :catch_37

    .line 430
    :goto_d
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/J;->d:Z

    if-nez v0, :cond_4

    .line 432
    monitor-enter p0

    .line 433
    :try_start_12
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/J;->e:Z

    if-nez v0, :cond_20

    iget-wide v0, p0, Lcom/google/android/maps/driveabout/vector/J;->f:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_31

    .line 436
    :cond_20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/J;->e:Z

    .line 437
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/vector/J;->f:J

    .line 438
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/J;->a:Lcom/google/android/maps/driveabout/vector/I;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/I;->b:Lcom/google/android/maps/driveabout/vector/K;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/K;->d_()V

    .line 440
    :cond_31
    monitor-exit p0

    goto :goto_0

    :catchall_33
    move-exception v0

    monitor-exit p0
    :try_end_35
    .catchall {:try_start_12 .. :try_end_35} :catchall_33

    throw v0

    .line 442
    :cond_36
    return-void

    .line 427
    :catch_37
    move-exception v0

    goto :goto_d
.end method
