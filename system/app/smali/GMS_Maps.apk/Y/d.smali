.class public LY/d;
.super LY/b;
.source "SourceFile"


# instance fields
.field private a:J

.field private b:J

.field private f:J

.field private g:J

.field private h:I

.field private i:Z


# direct methods
.method public constructor <init>(LY/c;)V
    .registers 3
    .parameter

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, LY/d;-><init>(LY/c;Ljava/lang/Runnable;)V

    .line 47
    return-void
.end method

.method public constructor <init>(LY/c;Ljava/lang/Runnable;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, LY/d;-><init>(LY/c;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public constructor <init>(LY/c;Ljava/lang/Runnable;Ljava/lang/String;)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v2, -0x1

    .line 67
    invoke-direct {p0, p1, p2, p3}, LY/b;-><init>(LY/c;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 27
    const-wide/16 v0, 0x0

    iput-wide v0, p0, LY/d;->a:J

    .line 29
    iput-wide v2, p0, LY/d;->b:J

    .line 31
    iput-wide v2, p0, LY/d;->f:J

    .line 34
    iput-wide v2, p0, LY/d;->g:J

    .line 36
    const/4 v0, -0x1

    iput v0, p0, LY/d;->h:I

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, LY/d;->i:Z

    .line 68
    return-void
.end method


# virtual methods
.method public declared-synchronized a(J)V
    .registers 4
    .parameter

    .prologue
    .line 160
    monitor-enter p0

    :try_start_1
    iput-wide p1, p0, LY/d;->a:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 161
    monitor-exit p0

    return-void

    .line 160
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(I)V
    .registers 3
    .parameter

    .prologue
    .line 197
    monitor-enter p0

    :try_start_1
    iput p1, p0, LY/d;->h:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 198
    monitor-exit p0

    return-void

    .line 197
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(J)V
    .registers 4
    .parameter

    .prologue
    .line 173
    monitor-enter p0

    :try_start_1
    iput-wide p1, p0, LY/d;->b:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 174
    monitor-exit p0

    return-void

    .line 173
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c(J)V
    .registers 4
    .parameter

    .prologue
    .line 185
    monitor-enter p0

    :try_start_1
    iput-wide p1, p0, LY/d;->f:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 186
    monitor-exit p0

    return-void

    .line 185
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized d()I
    .registers 5

    .prologue
    const-wide/16 v2, -0x1

    .line 117
    monitor-enter p0

    :try_start_3
    iget-object v0, p0, LY/d;->c:LY/c;

    invoke-virtual {v0, p0}, LY/c;->c(LY/a;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 118
    const-wide/16 v0, -0x1

    iput-wide v0, p0, LY/d;->g:J

    .line 119
    iget v0, p0, LY/d;->h:I
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_22

    .line 124
    :goto_11
    monitor-exit p0

    return v0

    .line 120
    :cond_13
    :try_start_13
    iget-wide v0, p0, LY/d;->g:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_20

    .line 121
    const-wide/16 v0, -0x1

    iput-wide v0, p0, LY/d;->g:J

    .line 122
    iget v0, p0, LY/d;->h:I
    :try_end_1f
    .catchall {:try_start_13 .. :try_end_1f} :catchall_22

    goto :goto_11

    .line 124
    :cond_20
    const/4 v0, 0x0

    goto :goto_11

    .line 117
    :catchall_22
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public g()V
    .registers 5

    .prologue
    const-wide/16 v2, -0x1

    .line 77
    monitor-enter p0

    .line 78
    :try_start_3
    iget v0, p0, LY/d;->h:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    iget v0, p0, LY/d;->h:I

    if-lez v0, :cond_29

    .line 79
    :cond_c
    iget-wide v0, p0, LY/d;->g:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_29

    .line 80
    iget-wide v0, p0, LY/d;->b:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_30

    .line 81
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v0

    iget-wide v2, p0, LY/d;->a:J

    add-long/2addr v0, v2

    iput-wide v0, p0, LY/d;->g:J

    .line 88
    :cond_29
    :goto_29
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_38

    .line 89
    iget-object v0, p0, LY/d;->c:LY/c;

    invoke-virtual {v0, p0}, LY/c;->a(LY/a;)V

    .line 90
    return-void

    .line 84
    :cond_30
    :try_start_30
    iget-wide v0, p0, LY/d;->b:J

    iget-wide v2, p0, LY/d;->a:J

    add-long/2addr v0, v2

    iput-wide v0, p0, LY/d;->g:J

    goto :goto_29

    .line 88
    :catchall_38
    move-exception v0

    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_30 .. :try_end_3a} :catchall_38

    throw v0
.end method

.method declared-synchronized h()V
    .registers 5

    .prologue
    .line 98
    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, LY/d;->g:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_e

    .line 99
    iget-object v0, p0, LY/d;->c:LY/c;

    invoke-virtual {v0, p0}, LY/c;->a(LY/d;)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 101
    :cond_e
    monitor-exit p0

    return-void

    .line 98
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method i()V
    .registers 5

    .prologue
    const-wide/16 v2, -0x1

    .line 222
    monitor-enter p0

    .line 223
    :try_start_3
    iget-wide v0, p0, LY/d;->f:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_17

    .line 224
    const-wide/16 v0, -0x1

    iput-wide v0, p0, LY/d;->g:J

    .line 240
    :goto_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_2a

    .line 242
    invoke-super {p0}, LY/b;->i()V

    .line 244
    iget-object v0, p0, LY/d;->c:LY/c;

    invoke-virtual {v0, p0}, LY/c;->a(LY/a;)V

    .line 245
    return-void

    .line 226
    :cond_17
    :try_start_17
    iget v0, p0, LY/d;->h:I

    if-lez v0, :cond_21

    .line 227
    iget v0, p0, LY/d;->h:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, LY/d;->h:I

    .line 229
    :cond_21
    iget v0, p0, LY/d;->h:I

    if-nez v0, :cond_2d

    .line 230
    const-wide/16 v0, -0x1

    iput-wide v0, p0, LY/d;->g:J

    goto :goto_d

    .line 240
    :catchall_2a
    move-exception v0

    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_17 .. :try_end_2c} :catchall_2a

    throw v0

    .line 232
    :cond_2d
    :try_start_2d
    iget-boolean v0, p0, LY/d;->i:Z

    if-eqz v0, :cond_39

    .line 233
    iget-wide v0, p0, LY/d;->g:J

    iget-wide v2, p0, LY/d;->f:J

    add-long/2addr v0, v2

    iput-wide v0, p0, LY/d;->g:J

    goto :goto_d

    .line 235
    :cond_39
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v0

    iget-wide v2, p0, LY/d;->f:J

    add-long/2addr v0, v2

    iput-wide v0, p0, LY/d;->g:J
    :try_end_4a
    .catchall {:try_start_2d .. :try_end_4a} :catchall_2a

    goto :goto_d
.end method

.method public declared-synchronized k()J
    .registers 3

    .prologue
    .line 142
    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, LY/d;->g:J
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

    .prologue
    .line 149
    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, LY/d;->g:J
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
