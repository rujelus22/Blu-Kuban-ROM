.class LaN/c;
.super Lt/c;
.source "SourceFile"


# instance fields
.field final synthetic a:LaN/b;


# direct methods
.method constructor <init>(LaN/b;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 232
    iput-object p1, p0, LaN/c;->a:LaN/b;

    invoke-direct {p0, p2}, Lt/c;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public n_()V
    .registers 9

    .prologue
    const-wide/16 v6, 0xbb8

    .line 235
    :cond_2
    :goto_2
    iget-object v0, p0, LaN/c;->a:LaN/b;

    invoke-static {v0}, LaN/b;->a(LaN/b;)Z

    move-result v0

    if-nez v0, :cond_7a

    .line 236
    iget-object v0, p0, LaN/c;->a:LaN/b;

    invoke-static {v0}, LaN/b;->b(LaN/b;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 237
    :try_start_11
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_77

    move-result-wide v2

    .line 239
    :try_start_15
    iget-object v0, p0, LaN/c;->a:LaN/b;

    invoke-static {v0}, LaN/b;->c(LaN/b;)J

    move-result-wide v4

    sub-long v2, v4, v2

    .line 240
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_2c

    .line 241
    iget-object v0, p0, LaN/c;->a:LaN/b;

    invoke-static {v0}, LaN/b;->b(LaN/b;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_2c
    .catchall {:try_start_15 .. :try_end_2c} :catchall_77
    .catch Ljava/lang/InterruptedException; {:try_start_15 .. :try_end_2c} :catch_7d

    .line 246
    :cond_2c
    :goto_2c
    :try_start_2c
    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_77

    .line 248
    iget-object v0, p0, LaN/c;->a:LaN/b;

    invoke-static {v0}, LaN/b;->a(LaN/b;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 249
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 252
    iget-object v2, p0, LaN/c;->a:LaN/b;

    invoke-static {v2}, LaN/b;->c(LaN/b;)J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-gez v2, :cond_57

    .line 253
    iget-object v2, p0, LaN/c;->a:LaN/b;

    invoke-static {v2}, LaN/b;->d(LaN/b;)Lat/p;

    move-result-object v2

    invoke-virtual {v2}, Lat/p;->a()Lat/D;

    move-result-object v2

    invoke-virtual {v2}, Lat/D;->c()V

    .line 254
    iget-object v2, p0, LaN/c;->a:LaN/b;

    add-long v3, v0, v6

    invoke-static {v2, v3, v4}, LaN/b;->a(LaN/b;J)J

    .line 257
    :cond_57
    iget-object v2, p0, LaN/c;->a:LaN/b;

    invoke-static {v2}, LaN/b;->e(LaN/b;)J

    move-result-wide v2

    add-long/2addr v2, v6

    cmp-long v0, v2, v0

    if-gez v0, :cond_2

    .line 259
    iget-object v0, p0, LaN/c;->a:LaN/b;

    invoke-static {v0}, LaN/b;->f(LaN/b;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 261
    :try_start_69
    iget-object v0, p0, LaN/c;->a:LaN/b;

    invoke-static {v0}, LaN/b;->f(LaN/b;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_72
    .catchall {:try_start_69 .. :try_end_72} :catchall_74
    .catch Ljava/lang/InterruptedException; {:try_start_69 .. :try_end_72} :catch_7b

    .line 265
    :goto_72
    :try_start_72
    monitor-exit v1

    goto :goto_2

    :catchall_74
    move-exception v0

    monitor-exit v1
    :try_end_76
    .catchall {:try_start_72 .. :try_end_76} :catchall_74

    throw v0

    .line 246
    :catchall_77
    move-exception v0

    :try_start_78
    monitor-exit v1
    :try_end_79
    .catchall {:try_start_78 .. :try_end_79} :catchall_77

    throw v0

    .line 269
    :cond_7a
    return-void

    .line 262
    :catch_7b
    move-exception v0

    goto :goto_72

    .line 243
    :catch_7d
    move-exception v0

    goto :goto_2c
.end method
