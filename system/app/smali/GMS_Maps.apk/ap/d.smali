.class public Lap/d;
.super Lap/b;


# instance fields
.field private a:J

.field private e:J

.field private f:J

.field private g:J

.field private h:I

.field private i:Z


# direct methods
.method public constructor <init>(Lap/c;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lap/d;-><init>(Lap/c;Ljava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>(Lap/c;Ljava/lang/Runnable;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lap/d;-><init>(Lap/c;Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lap/c;Ljava/lang/Runnable;Ljava/lang/String;)V
    .registers 8

    const-wide/16 v2, -0x1

    invoke-direct {p0, p1, p2, p3}, Lap/b;-><init>(Lap/c;Ljava/lang/Runnable;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lap/d;->a:J

    iput-wide v2, p0, Lap/d;->e:J

    iput-wide v2, p0, Lap/d;->f:J

    iput-wide v2, p0, Lap/d;->g:J

    const/4 v0, -0x1

    iput v0, p0, Lap/d;->h:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lap/d;->i:Z

    return-void
.end method


# virtual methods
.method public declared-synchronized a(J)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iput-wide p1, p0, Lap/d;->a:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Z)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-boolean p1, p0, Lap/d;->i:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(I)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput p1, p0, Lap/d;->h:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(J)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iput-wide p1, p0, Lap/d;->e:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c(J)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iput-wide p1, p0, Lap/d;->f:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized d()I
    .registers 5

    const-wide/16 v2, -0x1

    monitor-enter p0

    :try_start_3
    iget-object v0, p0, Lap/d;->b:Lap/c;

    invoke-virtual {v0, p0}, Lap/c;->c(Lap/a;)Z

    move-result v0

    if-eqz v0, :cond_13

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lap/d;->g:J

    iget v0, p0, Lap/d;->h:I
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_22

    :goto_11
    monitor-exit p0

    return v0

    :cond_13
    :try_start_13
    iget-wide v0, p0, Lap/d;->g:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_20

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lap/d;->g:J

    iget v0, p0, Lap/d;->h:I
    :try_end_1f
    .catchall {:try_start_13 .. :try_end_1f} :catchall_22

    goto :goto_11

    :cond_20
    const/4 v0, 0x0

    goto :goto_11

    :catchall_22
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public g()V
    .registers 5

    const-wide/16 v2, -0x1

    monitor-enter p0

    :try_start_3
    iget v0, p0, Lap/d;->h:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    iget v0, p0, Lap/d;->h:I

    if-lez v0, :cond_29

    :cond_c
    iget-wide v0, p0, Lap/d;->g:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_29

    iget-wide v0, p0, Lap/d;->e:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_30

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->v()Laf/a;

    move-result-object v0

    invoke-interface {v0}, Laf/a;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lap/d;->a:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lap/d;->g:J

    :cond_29
    :goto_29
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_38

    iget-object v0, p0, Lap/d;->b:Lap/c;

    invoke-virtual {v0, p0}, Lap/c;->a(Lap/a;)V

    return-void

    :cond_30
    :try_start_30
    iget-wide v0, p0, Lap/d;->e:J

    iget-wide v2, p0, Lap/d;->a:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lap/d;->g:J

    goto :goto_29

    :catchall_38
    move-exception v0

    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_30 .. :try_end_3a} :catchall_38

    throw v0
.end method

.method declared-synchronized h()V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lap/d;->g:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_e

    iget-object v0, p0, Lap/d;->b:Lap/c;

    invoke-virtual {v0, p0}, Lap/c;->a(Lap/d;)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    :cond_e
    monitor-exit p0

    return-void

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method i()V
    .registers 5

    const-wide/16 v2, -0x1

    monitor-enter p0

    :try_start_3
    iget-wide v0, p0, Lap/d;->f:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_17

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lap/d;->g:J

    :goto_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_2a

    invoke-super {p0}, Lap/b;->i()V

    iget-object v0, p0, Lap/d;->b:Lap/c;

    invoke-virtual {v0, p0}, Lap/c;->a(Lap/a;)V

    return-void

    :cond_17
    :try_start_17
    iget v0, p0, Lap/d;->h:I

    if-lez v0, :cond_21

    iget v0, p0, Lap/d;->h:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lap/d;->h:I

    :cond_21
    iget v0, p0, Lap/d;->h:I

    if-nez v0, :cond_2d

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lap/d;->g:J

    goto :goto_d

    :catchall_2a
    move-exception v0

    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_17 .. :try_end_2c} :catchall_2a

    throw v0

    :cond_2d
    :try_start_2d
    iget-boolean v0, p0, Lap/d;->i:Z

    if-eqz v0, :cond_39

    iget-wide v0, p0, Lap/d;->g:J

    iget-wide v2, p0, Lap/d;->f:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lap/d;->g:J

    goto :goto_d

    :cond_39
    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->v()Laf/a;

    move-result-object v0

    invoke-interface {v0}, Laf/a;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lap/d;->f:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lap/d;->g:J
    :try_end_4a
    .catchall {:try_start_2d .. :try_end_4a} :catchall_2a

    goto :goto_d
.end method

.method public declared-synchronized k()J
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lap/d;->g:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-wide v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized l()Z
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lap/d;->g:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_e

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_a
    monitor-exit p0

    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_a

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method
