.class public final Lcom/dropbox/android/util/M;
.super Ljava/lang/Object;
.source "panda.py"


# direct methods
.method public static declared-synchronized a(Lcom/dropbox/android/taskqueue/G;)V
    .registers 8
    .parameter

    .prologue
    .line 16
    const-class v1, Lcom/dropbox/android/util/M;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Ldbxyzptlk/j/m;->a()Ldbxyzptlk/j/m;

    move-result-object v0

    .line 17
    invoke-virtual {v0}, Ldbxyzptlk/j/m;->j()Ldbxyzptlk/j/o;

    move-result-object v2

    sget-object v3, Ldbxyzptlk/j/o;->b:Ldbxyzptlk/j/o;

    if-ne v2, v3, :cond_3e

    .line 18
    const-class v2, Lcom/dropbox/android/taskqueue/CameraUploadTask;

    invoke-virtual {p0, v2}, Lcom/dropbox/android/taskqueue/G;->b(Ljava/lang/Class;)I

    move-result v2

    .line 19
    if-nez v2, :cond_61

    invoke-virtual {v0}, Ldbxyzptlk/j/m;->h()Z

    move-result v2

    if-nez v2, :cond_61

    .line 20
    invoke-virtual {v0}, Ldbxyzptlk/j/m;->k()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_63

    invoke-virtual {v0}, Ldbxyzptlk/j/m;->n()Z

    move-result v2

    if-eqz v2, :cond_63

    .line 21
    invoke-static {}, Lcom/dropbox/android/a;->a()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/dropbox/android/util/aw;->d:Lcom/dropbox/android/util/aw;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Lcom/dropbox/android/service/NotificationService;->a(Landroid/content/Context;Lcom/dropbox/android/util/aw;Landroid/os/Bundle;ZZ)Z

    .line 23
    sget-object v2, Ldbxyzptlk/j/o;->a:Ldbxyzptlk/j/o;

    invoke-virtual {v0, v2}, Ldbxyzptlk/j/m;->a(Ldbxyzptlk/j/o;)V

    .line 37
    :cond_3e
    :goto_3e
    invoke-virtual {v0}, Ldbxyzptlk/j/m;->j()Ldbxyzptlk/j/o;

    move-result-object v2

    sget-object v3, Ldbxyzptlk/j/o;->c:Ldbxyzptlk/j/o;

    if-ne v2, v3, :cond_61

    .line 38
    invoke-virtual {v0}, Ldbxyzptlk/j/m;->k()J

    move-result-wide v2

    const-wide/16 v4, 0xa

    cmp-long v2, v2, v4

    if-ltz v2, :cond_61

    .line 39
    invoke-static {}, Lcom/dropbox/android/a;->a()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/dropbox/android/util/aw;->e:Lcom/dropbox/android/util/aw;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Lcom/dropbox/android/service/NotificationService;->a(Landroid/content/Context;Lcom/dropbox/android/util/aw;Landroid/os/Bundle;ZZ)Z

    .line 41
    sget-object v2, Ldbxyzptlk/j/o;->a:Ldbxyzptlk/j/o;

    invoke-virtual {v0, v2}, Ldbxyzptlk/j/m;->a(Ldbxyzptlk/j/o;)V
    :try_end_61
    .catchall {:try_start_3 .. :try_end_61} :catchall_69

    .line 44
    :cond_61
    monitor-exit v1

    return-void

    .line 29
    :cond_63
    :try_start_63
    sget-object v2, Ldbxyzptlk/j/o;->c:Ldbxyzptlk/j/o;

    invoke-virtual {v0, v2}, Ldbxyzptlk/j/m;->a(Ldbxyzptlk/j/o;)V
    :try_end_68
    .catchall {:try_start_63 .. :try_end_68} :catchall_69

    goto :goto_3e

    .line 16
    :catchall_69
    move-exception v0

    monitor-exit v1

    throw v0
.end method
