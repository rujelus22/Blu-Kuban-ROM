.class public LF/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/common/a;


# instance fields
.field public final a:D

.field private final b:Lcom/google/googlenav/common/a;

.field private c:J

.field private d:J

.field private e:J

.field private f:Z


# direct methods
.method public constructor <init>(Lcom/google/googlenav/common/a;JD)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, LF/a;->b:Lcom/google/googlenav/common/a;

    .line 61
    iput-wide p4, p0, LF/a;->a:D

    .line 62
    iput-wide p2, p0, LF/a;->d:J

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, LF/a;->f:Z

    .line 64
    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .registers 3

    .prologue
    .line 71
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, LF/a;->f:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_17

    if-eqz v0, :cond_7

    .line 77
    :goto_5
    monitor-exit p0

    return-void

    .line 74
    :cond_7
    const/4 v0, 0x1

    :try_start_8
    iput-boolean v0, p0, LF/a;->f:Z

    .line 75
    const-wide/16 v0, -0x1

    iput-wide v0, p0, LF/a;->e:J

    .line 76
    iget-object v0, p0, LF/a;->b:Lcom/google/googlenav/common/a;

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v0

    iput-wide v0, p0, LF/a;->c:J
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_17

    goto :goto_5

    .line 71
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(J)V
    .registers 4
    .parameter

    .prologue
    .line 87
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, LF/a;->a()V

    .line 88
    iput-wide p1, p0, LF/a;->e:J
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 89
    monitor-exit p0

    return-void

    .line 87
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()J
    .registers 7

    .prologue
    .line 103
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, LF/a;->f:Z

    if-eqz v0, :cond_2d

    .line 104
    iget-wide v0, p0, LF/a;->d:J

    iget-object v2, p0, LF/a;->b:Lcom/google/googlenav/common/a;

    invoke-interface {v2}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v2

    iget-wide v4, p0, LF/a;->c:J

    sub-long/2addr v2, v4

    long-to-double v2, v2

    iget-wide v4, p0, LF/a;->a:D

    mul-double/2addr v2, v4

    double-to-long v2, v2

    add-long/2addr v0, v2

    .line 105
    iget-wide v2, p0, LF/a;->e:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2b

    iget-wide v2, p0, LF/a;->e:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_2b

    .line 106
    iget-wide v0, p0, LF/a;->e:J

    invoke-virtual {p0, v0, v1}, LF/a;->b(J)V

    .line 107
    iget-wide v0, p0, LF/a;->e:J
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_30

    .line 111
    :cond_2b
    :goto_2b
    monitor-exit p0

    return-wide v0

    :cond_2d
    :try_start_2d
    iget-wide v0, p0, LF/a;->d:J
    :try_end_2f
    .catchall {:try_start_2d .. :try_end_2f} :catchall_30

    goto :goto_2b

    .line 103
    :catchall_30
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(J)V
    .registers 4
    .parameter

    .prologue
    .line 97
    monitor-enter p0

    :try_start_1
    iput-wide p1, p0, LF/a;->d:J

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, LF/a;->f:Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 99
    monitor-exit p0

    return-void

    .line 97
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c()J
    .registers 7

    .prologue
    .line 117
    iget-object v0, p0, LF/a;->b:Lcom/google/googlenav/common/a;

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->c()J

    move-result-wide v0

    invoke-virtual {p0}, LF/a;->b()J

    move-result-wide v2

    iget-object v4, p0, LF/a;->b:Lcom/google/googlenav/common/a;

    invoke-interface {v4}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v4

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public d()J
    .registers 7

    .prologue
    .line 122
    iget-object v0, p0, LF/a;->b:Lcom/google/googlenav/common/a;

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->d()J

    move-result-wide v0

    invoke-virtual {p0}, LF/a;->b()J

    move-result-wide v2

    iget-object v4, p0, LF/a;->b:Lcom/google/googlenav/common/a;

    invoke-interface {v4}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v4

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method
