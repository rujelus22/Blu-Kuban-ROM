.class public Lcom/google/android/youtube/googlemobile/common/c/d;
.super Lcom/google/android/youtube/googlemobile/common/c/b;


# instance fields
.field private a:J

.field private e:J

.field private f:J

.field private g:J

.field private h:I

.field private i:Z


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/googlemobile/common/c/c;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/youtube/googlemobile/common/c/d;-><init>(Lcom/google/android/youtube/googlemobile/common/c/c;Ljava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/youtube/googlemobile/common/c/c;Ljava/lang/Runnable;)V
    .registers 7

    const-wide/16 v2, -0x1

    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/googlemobile/common/c/b;-><init>(Lcom/google/android/youtube/googlemobile/common/c/c;Ljava/lang/Runnable;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/youtube/googlemobile/common/c/d;->a:J

    iput-wide v2, p0, Lcom/google/android/youtube/googlemobile/common/c/d;->e:J

    iput-wide v2, p0, Lcom/google/android/youtube/googlemobile/common/c/d;->f:J

    iput-wide v2, p0, Lcom/google/android/youtube/googlemobile/common/c/d;->g:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/youtube/googlemobile/common/c/d;->h:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/googlemobile/common/c/d;->i:Z

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(J)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iput-wide p1, p0, Lcom/google/android/youtube/googlemobile/common/c/d;->a:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(J)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iput-wide p1, p0, Lcom/google/android/youtube/googlemobile/common/c/d;->e:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()I
    .registers 5

    const-wide/16 v2, -0x1

    monitor-enter p0

    :try_start_3
    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/common/c/d;->b:Lcom/google/android/youtube/googlemobile/common/c/c;

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/googlemobile/common/c/c;->c(Lcom/google/android/youtube/googlemobile/common/c/a;)Z

    move-result v0

    if-eqz v0, :cond_13

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/youtube/googlemobile/common/c/d;->g:J

    iget v0, p0, Lcom/google/android/youtube/googlemobile/common/c/d;->h:I
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_22

    :goto_11
    monitor-exit p0

    return v0

    :cond_13
    :try_start_13
    iget-wide v0, p0, Lcom/google/android/youtube/googlemobile/common/c/d;->g:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_20

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/youtube/googlemobile/common/c/d;->g:J

    iget v0, p0, Lcom/google/android/youtube/googlemobile/common/c/d;->h:I
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

.method public final declared-synchronized e()V
    .registers 5

    const-wide/16 v2, -0x1

    monitor-enter p0

    :try_start_3
    iget v0, p0, Lcom/google/android/youtube/googlemobile/common/c/d;->h:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    iget v0, p0, Lcom/google/android/youtube/googlemobile/common/c/d;->h:I

    if-lez v0, :cond_2e

    :cond_c
    iget-wide v0, p0, Lcom/google/android/youtube/googlemobile/common/c/d;->g:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2e

    iget-wide v0, p0, Lcom/google/android/youtube/googlemobile/common/c/d;->e:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_30

    invoke-static {}, Lcom/google/android/youtube/googlemobile/common/b;->a()Lcom/google/android/youtube/googlemobile/common/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/googlemobile/common/b;->i()Lcom/google/android/youtube/googlemobile/common/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/youtube/googlemobile/common/a;->a()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/youtube/googlemobile/common/c/d;->a:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/youtube/googlemobile/common/c/d;->g:J

    :goto_29
    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/common/c/d;->b:Lcom/google/android/youtube/googlemobile/common/c/c;

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/googlemobile/common/c/c;->a(Lcom/google/android/youtube/googlemobile/common/c/a;)V
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_38

    :cond_2e
    monitor-exit p0

    return-void

    :cond_30
    :try_start_30
    iget-wide v0, p0, Lcom/google/android/youtube/googlemobile/common/c/d;->e:J

    iget-wide v2, p0, Lcom/google/android/youtube/googlemobile/common/c/d;->a:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/youtube/googlemobile/common/c/d;->g:J
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_38

    goto :goto_29

    :catchall_38
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final f()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/common/c/d;->b:Lcom/google/android/youtube/googlemobile/common/c/c;

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/googlemobile/common/c/c;->a(Lcom/google/android/youtube/googlemobile/common/c/d;)V

    return-void
.end method

.method protected final g()V
    .registers 7

    const-wide/16 v4, -0x1

    monitor-enter p0

    :try_start_3
    iget-wide v0, p0, Lcom/google/android/youtube/googlemobile/common/c/d;->f:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_1f

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/youtube/googlemobile/common/c/d;->g:J

    :goto_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_32

    invoke-super {p0}, Lcom/google/android/youtube/googlemobile/common/c/b;->g()V

    monitor-enter p0

    :try_start_12
    iget-wide v0, p0, Lcom/google/android/youtube/googlemobile/common/c/d;->g:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/common/c/d;->b:Lcom/google/android/youtube/googlemobile/common/c/c;

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/googlemobile/common/c/c;->a(Lcom/google/android/youtube/googlemobile/common/c/a;)V

    :cond_1d
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_12 .. :try_end_1e} :catchall_53

    return-void

    :cond_1f
    :try_start_1f
    iget v0, p0, Lcom/google/android/youtube/googlemobile/common/c/d;->h:I

    if-lez v0, :cond_29

    iget v0, p0, Lcom/google/android/youtube/googlemobile/common/c/d;->h:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/youtube/googlemobile/common/c/d;->h:I

    :cond_29
    iget v0, p0, Lcom/google/android/youtube/googlemobile/common/c/d;->h:I

    if-nez v0, :cond_35

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/youtube/googlemobile/common/c/d;->g:J
    :try_end_31
    .catchall {:try_start_1f .. :try_end_31} :catchall_32

    goto :goto_d

    :catchall_32
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_35
    :try_start_35
    iget-boolean v0, p0, Lcom/google/android/youtube/googlemobile/common/c/d;->i:Z

    if-eqz v0, :cond_41

    iget-wide v0, p0, Lcom/google/android/youtube/googlemobile/common/c/d;->g:J

    iget-wide v2, p0, Lcom/google/android/youtube/googlemobile/common/c/d;->f:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/youtube/googlemobile/common/c/d;->g:J

    goto :goto_d

    :cond_41
    invoke-static {}, Lcom/google/android/youtube/googlemobile/common/b;->a()Lcom/google/android/youtube/googlemobile/common/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/googlemobile/common/b;->i()Lcom/google/android/youtube/googlemobile/common/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/youtube/googlemobile/common/a;->a()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/youtube/googlemobile/common/c/d;->f:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/youtube/googlemobile/common/c/d;->g:J
    :try_end_52
    .catchall {:try_start_35 .. :try_end_52} :catchall_32

    goto :goto_d

    :catchall_53
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized i()J
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/google/android/youtube/googlemobile/common/c/d;->g:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-wide v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method
