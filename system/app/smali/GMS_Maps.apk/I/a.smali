.class public LI/a;
.super Ljava/lang/Object;

# interfaces
.implements Laf/a;


# instance fields
.field public final a:D

.field private final b:Laf/a;

.field private c:J

.field private d:J

.field private e:J

.field private f:Z


# direct methods
.method public constructor <init>(Laf/a;JD)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LI/a;->b:Laf/a;

    iput-wide p4, p0, LI/a;->a:D

    iput-wide p2, p0, LI/a;->d:J

    const/4 v0, 0x0

    iput-boolean v0, p0, LI/a;->f:Z

    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, LI/a;->f:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_17

    if-eqz v0, :cond_7

    :goto_5
    monitor-exit p0

    return-void

    :cond_7
    const/4 v0, 0x1

    :try_start_8
    iput-boolean v0, p0, LI/a;->f:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, LI/a;->e:J

    iget-object v0, p0, LI/a;->b:Laf/a;

    invoke-interface {v0}, Laf/a;->b()J

    move-result-wide v0

    iput-wide v0, p0, LI/a;->c:J
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_17

    goto :goto_5

    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(J)V
    .registers 4

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, LI/a;->a()V

    iput-wide p1, p0, LI/a;->e:J
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()J
    .registers 7

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, LI/a;->f:Z

    if-eqz v0, :cond_2d

    iget-wide v0, p0, LI/a;->d:J

    iget-object v2, p0, LI/a;->b:Laf/a;

    invoke-interface {v2}, Laf/a;->b()J

    move-result-wide v2

    iget-wide v4, p0, LI/a;->c:J

    sub-long/2addr v2, v4

    long-to-double v2, v2

    iget-wide v4, p0, LI/a;->a:D

    mul-double/2addr v2, v4

    double-to-long v2, v2

    add-long/2addr v0, v2

    iget-wide v2, p0, LI/a;->e:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2b

    iget-wide v2, p0, LI/a;->e:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_2b

    iget-wide v0, p0, LI/a;->e:J

    invoke-virtual {p0, v0, v1}, LI/a;->b(J)V

    iget-wide v0, p0, LI/a;->e:J
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_30

    :cond_2b
    :goto_2b
    monitor-exit p0

    return-wide v0

    :cond_2d
    :try_start_2d
    iget-wide v0, p0, LI/a;->d:J
    :try_end_2f
    .catchall {:try_start_2d .. :try_end_2f} :catchall_30

    goto :goto_2b

    :catchall_30
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(J)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iput-wide p1, p0, LI/a;->d:J

    const/4 v0, 0x0

    iput-boolean v0, p0, LI/a;->f:Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c()J
    .registers 7

    iget-object v0, p0, LI/a;->b:Laf/a;

    invoke-interface {v0}, Laf/a;->c()J

    move-result-wide v0

    invoke-virtual {p0}, LI/a;->b()J

    move-result-wide v2

    iget-object v4, p0, LI/a;->b:Laf/a;

    invoke-interface {v4}, Laf/a;->b()J

    move-result-wide v4

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public d()J
    .registers 7

    iget-object v0, p0, LI/a;->b:Laf/a;

    invoke-interface {v0}, Laf/a;->d()J

    move-result-wide v0

    invoke-virtual {p0}, LI/a;->b()J

    move-result-wide v2

    iget-object v4, p0, LI/a;->b:Laf/a;

    invoke-interface {v4}, Laf/a;->b()J

    move-result-wide v4

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method
