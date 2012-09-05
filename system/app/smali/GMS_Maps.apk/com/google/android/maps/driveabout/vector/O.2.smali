.class public Lcom/google/android/maps/driveabout/vector/O;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/driveabout/vector/cm;


# instance fields
.field final a:Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;

.field protected b:Lcom/google/android/maps/driveabout/vector/P;

.field private c:I

.field private d:J

.field private e:I

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:I

.field private j:I

.field private k:I

.field private l:Z


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/O;->l:Z

    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/vector/O;->c(I)V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/O;->a:Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;

    return-void
.end method

.method private j()V
    .registers 4

    const/4 v2, 0x0

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/O;->j:I

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/O;->i:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/O;->j:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const v1, 0x3e6b8520

    cmpg-float v1, v0, v1

    if-gez v1, :cond_24

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/O;->e:I

    int-to-float v0, v0

    const v1, 0x3f8ccccd

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/vector/O;->c(I)V

    :cond_1d
    :goto_1d
    iput v2, p0, Lcom/google/android/maps/driveabout/vector/O;->k:I

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/O;->i:I

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/O;->j:I

    return-void

    :cond_24
    const v1, 0x3ebd70a4

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1d

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/O;->e:I

    int-to-float v0, v0

    const v1, 0x3f666666

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/vector/O;->c(I)V

    goto :goto_1d
.end method


# virtual methods
.method public a()V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/O;->c:I

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/O;->d()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/vector/O;->d:J

    return-void
.end method

.method public a(J)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/O;->b:Lcom/google/android/maps/driveabout/vector/P;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/O;->b:Lcom/google/android/maps/driveabout/vector/P;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/maps/driveabout/vector/P;->a(J)V

    :cond_a
    monitor-exit p0

    return-void

    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw v0
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/vector/O;->f:Z

    return-void
.end method

.method public a(ZZ)V
    .registers 4

    monitor-enter p0

    if-eqz p1, :cond_7

    const/4 v0, 0x1

    :try_start_4
    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/vector/O;->c(Z)V

    :cond_7
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/O;->b:Lcom/google/android/maps/driveabout/vector/P;

    if-eqz v0, :cond_17

    if-eqz p2, :cond_12

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/O;->b:Lcom/google/android/maps/driveabout/vector/P;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/P;->d()V

    :cond_12
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/O;->b:Lcom/google/android/maps/driveabout/vector/P;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/P;->e()V

    :cond_17
    monitor-exit p0

    return-void

    :catchall_19
    move-exception v0

    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_4 .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public a(I)Z
    .registers 4

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/O;->c:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/O;->c:I

    if-eqz v1, :cond_c

    const v1, 0x88b8

    if-gt v0, v1, :cond_10

    :cond_c
    iput v0, p0, Lcom/google/android/maps/driveabout/vector/O;->c:I

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public b()V
    .registers 8

    const/16 v1, 0x14

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/O;->d()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/maps/driveabout/vector/O;->d:J

    sub-long/2addr v2, v4

    long-to-int v0, v2

    add-int/lit8 v2, v0, 0x5

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/O;->f:Z

    if-eqz v0, :cond_57

    move v0, v1

    :goto_11
    iget-boolean v3, p0, Lcom/google/android/maps/driveabout/vector/O;->g:Z

    if-eqz v3, :cond_17

    add-int/lit16 v0, v0, 0x1f4

    :cond_17
    const/16 v3, 0xf

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    monitor-enter p0

    :try_start_1e
    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/O;->b:Lcom/google/android/maps/driveabout/vector/P;

    if-eqz v3, :cond_38

    iget-boolean v3, p0, Lcom/google/android/maps/driveabout/vector/O;->h:Z

    if-nez v3, :cond_76

    iget-boolean v3, p0, Lcom/google/android/maps/driveabout/vector/O;->f:Z

    if-eqz v3, :cond_5a

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/O;->b:Lcom/google/android/maps/driveabout/vector/P;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/P;->e()V

    :cond_2f
    :goto_2f
    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/O;->b:Lcom/google/android/maps/driveabout/vector/P;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/vector/O;->d(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/android/maps/driveabout/vector/P;->a(I)V

    :cond_38
    :goto_38
    monitor-exit p0
    :try_end_39
    .catchall {:try_start_1e .. :try_end_39} :catchall_7f

    iget-boolean v3, p0, Lcom/google/android/maps/driveabout/vector/O;->g:Z

    if-nez v3, :cond_56

    iget-boolean v3, p0, Lcom/google/android/maps/driveabout/vector/O;->f:Z

    if-nez v3, :cond_56

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/O;->i:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/O;->i:I

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/O;->j:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/O;->j:I

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/O;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/O;->k:I

    if-ne v0, v1, :cond_56

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/O;->j()V

    :cond_56
    return-void

    :cond_57
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/O;->e:I

    goto :goto_11

    :cond_5a
    :try_start_5a
    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/O;->b:Lcom/google/android/maps/driveabout/vector/P;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/P;->f()J

    move-result-wide v3

    const-wide v5, 0x7fffffffffffffffL

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2f

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/O;->b:Lcom/google/android/maps/driveabout/vector/P;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/P;->f()J

    move-result-wide v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long/2addr v3, v5

    long-to-int v0, v3

    goto :goto_2f

    :cond_76
    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/O;->b:Lcom/google/android/maps/driveabout/vector/P;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/P;->d()V

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/google/android/maps/driveabout/vector/O;->h:Z

    goto :goto_38

    :catchall_7f
    move-exception v0

    monitor-exit p0
    :try_end_81
    .catchall {:try_start_5a .. :try_end_81} :catchall_7f

    throw v0
.end method

.method public b(I)V
    .registers 3

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/O;->c:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/O;->c:I

    return-void
.end method

.method public b(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/vector/O;->g:Z

    return-void
.end method

.method public declared-synchronized c()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/O;->h:Z

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/O;->b:Lcom/google/android/maps/driveabout/vector/P;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/O;->b:Lcom/google/android/maps/driveabout/vector/P;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/P;->d()V
    :try_end_d
    .catchall {:try_start_2 .. :try_end_d} :catchall_f

    :cond_d
    monitor-exit p0

    return-void

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method c(I)V
    .registers 3

    const/16 v0, 0x14

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/O;->e:I

    return-void
.end method

.method public declared-synchronized c(Z)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/vector/O;->l:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method d(I)I
    .registers 2

    return p1
.end method

.method d()J
    .registers 3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public e()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/O;->b:Lcom/google/android/maps/driveabout/vector/P;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/O;->b:Lcom/google/android/maps/driveabout/vector/P;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/P;->b()V

    :goto_a
    monitor-exit p0

    return-void

    :cond_c
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/O;->a:Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->e()V

    goto :goto_a

    :catchall_12
    move-exception v0

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public f()V
    .registers 2

    monitor-enter p0

    :try_start_1
    new-instance v0, Lcom/google/android/maps/driveabout/vector/P;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/vector/P;-><init>(Lcom/google/android/maps/driveabout/vector/O;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/O;->b:Lcom/google/android/maps/driveabout/vector/P;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/O;->b:Lcom/google/android/maps/driveabout/vector/P;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/P;->start()V

    monitor-exit p0

    return-void

    :catchall_f
    move-exception v0

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public g()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/O;->b:Lcom/google/android/maps/driveabout/vector/P;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/O;->b:Lcom/google/android/maps/driveabout/vector/P;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/P;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/O;->b:Lcom/google/android/maps/driveabout/vector/P;

    :cond_d
    monitor-exit p0

    return-void

    :catchall_f
    move-exception v0

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public declared-synchronized h()Z
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/O;->l:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/O;->l:Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return v0

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public i()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/O;->b:Lcom/google/android/maps/driveabout/vector/P;

    if-eqz v0, :cond_a

    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/P;->a(Lcom/google/android/maps/driveabout/vector/P;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method
