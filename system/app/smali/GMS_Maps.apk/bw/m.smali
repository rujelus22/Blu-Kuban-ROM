.class public abstract Lbw/m;
.super Lbw/a;

# interfaces
.implements Lbv/f;


# instance fields
.field private a:J

.field private b:J

.field protected c:Lbw/n;

.field protected d:J

.field protected e:I

.field private f:Z

.field private g:J

.field private h:J

.field private i:Z

.field private j:Z

.field private k:Ljava/lang/String;

.field private l:Lcom/google/gmm/debug/c;


# direct methods
.method public constructor <init>()V
    .registers 6

    const/4 v4, 0x0

    const-wide/16 v2, -0x1

    invoke-direct {p0}, Lbw/a;-><init>()V

    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lbw/m;->d:J

    const/4 v0, 0x4

    iput v0, p0, Lbw/m;->e:I

    iput-wide v2, p0, Lbw/m;->a:J

    iput-wide v2, p0, Lbw/m;->b:J

    iput-wide v2, p0, Lbw/m;->g:J

    iput-wide v2, p0, Lbw/m;->h:J

    iput-boolean v4, p0, Lbw/m;->i:Z

    iput-boolean v4, p0, Lbw/m;->j:Z

    invoke-static {p0}, Lcom/google/gmm/debug/c;->a(Ljava/lang/Object;)Lcom/google/gmm/debug/c;

    move-result-object v0

    iput-object v0, p0, Lbw/m;->l:Lcom/google/gmm/debug/c;

    return-void
.end method

.method private f()V
    .registers 5

    iget-wide v0, p0, Lbw/m;->b:J

    iget-wide v2, p0, Lbw/m;->a:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lbw/m;->b:J

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public declared-synchronized a(Lbw/n;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lbw/m;->c:Lbw/n;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(J)Z
    .registers 8

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_2
    iget-wide v1, p0, Lbw/m;->h:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_15

    iget-wide v1, p0, Lbw/m;->g:J

    iget-wide v3, p0, Lbw/m;->h:J
    :try_end_e
    .catchall {:try_start_2 .. :try_end_e} :catchall_1b

    add-long/2addr v1, v3

    cmp-long v1, v1, p1

    if-gez v1, :cond_15

    :cond_13
    :goto_13
    monitor-exit p0

    return v0

    :cond_15
    :try_start_15
    iget v1, p0, Lbw/m;->e:I
    :try_end_17
    .catchall {:try_start_15 .. :try_end_17} :catchall_1b

    if-lez v1, :cond_13

    const/4 v0, 0x1

    goto :goto_13

    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract a_()I
.end method

.method public declared-synchronized b(I)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput p1, p0, Lbw/m;->e:I
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
    .registers 7

    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lbw/m;->d:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lbw/m;->a:J

    iget-boolean v0, p0, Lbw/m;->f:Z

    if-eqz v0, :cond_1a

    iget-wide v0, p0, Lbw/m;->a:J

    iput-wide v0, p0, Lbw/m;->b:J

    :goto_e
    invoke-direct {p0}, Lbw/m;->f()V

    iget-wide v0, p0, Lbw/m;->d:J

    const-wide/16 v2, 0x2

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lbw/m;->d:J
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_21

    monitor-exit p0

    return-void

    :cond_1a
    const-wide/32 v0, 0x36ee80

    add-long/2addr v0, p1

    :try_start_1e
    iput-wide v0, p0, Lbw/m;->b:J
    :try_end_20
    .catchall {:try_start_1e .. :try_end_20} :catchall_21

    goto :goto_e

    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract b_()Ljava/io/InputStream;
.end method

.method public declared-synchronized c(J)V
    .registers 5

    monitor-enter p0

    const-wide/16 v0, 0xbb8

    add-long/2addr v0, p1

    :try_start_4
    iput-wide v0, p0, Lbw/m;->a:J

    const-wide/16 v0, 0x1388

    add-long/2addr v0, p1

    iput-wide v0, p0, Lbw/m;->b:J

    invoke-direct {p0}, Lbw/m;->f()V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_10

    monitor-exit p0

    return-void

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public d(J)V
    .registers 5

    iget-boolean v0, p0, Lbw/m;->f:Z

    if-eqz v0, :cond_e

    const-wide/16 v0, 0xbb8

    add-long/2addr v0, p1

    iput-wide v0, p0, Lbw/m;->a:J

    const-wide/16 v0, 0x1388

    add-long/2addr v0, p1

    iput-wide v0, p0, Lbw/m;->b:J

    :cond_e
    return-void
.end method

.method public e()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbw/m;->j:Z

    return-void
.end method

.method public declared-synchronized i()Lbw/n;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lbw/m;->c:Lbw/n;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public j()Z
    .registers 2

    iget-boolean v0, p0, Lbw/m;->f:Z

    return v0
.end method

.method public k()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbw/m;->f:Z

    return-void
.end method

.method public l()Z
    .registers 2

    iget-boolean v0, p0, Lbw/m;->j:Z

    return v0
.end method

.method public declared-synchronized m()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lbw/m;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lbw/m;->e:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public n()J
    .registers 3

    iget-wide v0, p0, Lbw/m;->a:J

    return-wide v0
.end method

.method public o()J
    .registers 3

    iget-wide v0, p0, Lbw/m;->b:J

    return-wide v0
.end method

.method public p()J
    .registers 3

    iget-wide v0, p0, Lbw/m;->h:J

    return-wide v0
.end method

.method public q()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lbw/m;->k:Ljava/lang/String;

    return-object v0
.end method

.method public r()V
    .registers 5

    const-wide/16 v2, -0x1

    iget-object v0, p0, Lbw/m;->l:Lcom/google/gmm/debug/c;

    const-string v1, "updateSubmit"

    invoke-virtual {v0, v1}, Lcom/google/gmm/debug/c;->c(Ljava/lang/Object;)V

    iget-wide v0, p0, Lbw/m;->g:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1d

    invoke-static {}, LP/b;->a()LP/b;

    move-result-object v0

    invoke-virtual {v0}, LP/b;->i()LP/a;

    move-result-object v0

    invoke-interface {v0}, LP/a;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lbw/m;->g:J

    :cond_1d
    invoke-virtual {p0}, Lbw/m;->j()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-virtual {p0}, Lbw/m;->p()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2f

    const-wide/16 v0, 0x4e20

    iput-wide v0, p0, Lbw/m;->h:J

    :cond_2f
    return-void
.end method

.method public declared-synchronized s()Z
    .registers 3

    const/4 v0, 0x1

    monitor-enter p0

    :try_start_2
    iget-boolean v1, p0, Lbw/m;->i:Z

    if-nez v1, :cond_b

    const/4 v1, 0x1

    iput-boolean v1, p0, Lbw/m;->i:Z
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_d

    :goto_9
    monitor-exit p0

    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_9

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public t()Z
    .registers 2

    iget-boolean v0, p0, Lbw/m;->i:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
