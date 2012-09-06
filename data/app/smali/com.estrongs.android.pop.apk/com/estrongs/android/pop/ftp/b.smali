.class Lcom/estrongs/android/pop/ftp/b;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/ftp/a;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/ftp/a;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/ftp/b;->a:Lcom/estrongs/android/pop/ftp/a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/b;->a:Lcom/estrongs/android/pop/ftp/a;

    invoke-static {v0}, Lcom/estrongs/android/pop/ftp/a;->a(Lcom/estrongs/android/pop/ftp/a;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    :try_start_7
    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/b;->a:Lcom/estrongs/android/pop/ftp/a;

    invoke-static {v0}, Lcom/estrongs/android/pop/ftp/a;->b(Lcom/estrongs/android/pop/ftp/a;)J

    move-result-wide v2

    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/b;->a:Lcom/estrongs/android/pop/ftp/a;

    invoke-static {v0}, Lcom/estrongs/android/pop/ftp/a;->c(Lcom/estrongs/android/pop/ftp/a;)J

    move-result-wide v0

    monitor-exit v4
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_23

    :cond_14
    :goto_14
    iget-object v4, p0, Lcom/estrongs/android/pop/ftp/b;->a:Lcom/estrongs/android/pop/ftp/a;

    invoke-static {v4}, Lcom/estrongs/android/pop/ftp/a;->d(Lcom/estrongs/android/pop/ftp/a;)Z

    move-result v4

    if-nez v4, :cond_22

    iget-object v4, p0, Lcom/estrongs/android/pop/ftp/b;->a:Lcom/estrongs/android/pop/ftp/a;

    iget-boolean v4, v4, Lcom/estrongs/android/pop/ftp/a;->e:Z

    if-nez v4, :cond_26

    :cond_22
    return-void

    :catchall_23
    move-exception v0

    :try_start_24
    monitor-exit v4
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw v0

    :cond_26
    const-wide/16 v4, 0x3e8

    :try_start_28
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_2b} :catch_5f

    :goto_2b
    iget-object v4, p0, Lcom/estrongs/android/pop/ftp/b;->a:Lcom/estrongs/android/pop/ftp/a;

    invoke-static {v4}, Lcom/estrongs/android/pop/ftp/a;->a(Lcom/estrongs/android/pop/ftp/a;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    :try_start_32
    iget-object v5, p0, Lcom/estrongs/android/pop/ftp/b;->a:Lcom/estrongs/android/pop/ftp/a;

    invoke-static {v5}, Lcom/estrongs/android/pop/ftp/a;->b(Lcom/estrongs/android/pop/ftp/a;)J

    move-result-wide v5

    sub-long/2addr v5, v2

    iget-object v2, p0, Lcom/estrongs/android/pop/ftp/b;->a:Lcom/estrongs/android/pop/ftp/a;

    invoke-static {v2}, Lcom/estrongs/android/pop/ftp/a;->c(Lcom/estrongs/android/pop/ftp/a;)J

    move-result-wide v2

    sub-long v7, v2, v0

    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/b;->a:Lcom/estrongs/android/pop/ftp/a;

    invoke-static {v0}, Lcom/estrongs/android/pop/ftp/a;->b(Lcom/estrongs/android/pop/ftp/a;)J

    move-result-wide v2

    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/b;->a:Lcom/estrongs/android/pop/ftp/a;

    invoke-static {v0}, Lcom/estrongs/android/pop/ftp/a;->c(Lcom/estrongs/android/pop/ftp/a;)J

    move-result-wide v0

    monitor-exit v4
    :try_end_4e
    .catchall {:try_start_32 .. :try_end_4e} :catchall_5c

    iget-object v4, p0, Lcom/estrongs/android/pop/ftp/b;->a:Lcom/estrongs/android/pop/ftp/a;

    iget-object v4, v4, Lcom/estrongs/android/pop/ftp/a;->j:Lcom/estrongs/android/pop/ftp/d;

    if-eqz v4, :cond_14

    iget-object v4, p0, Lcom/estrongs/android/pop/ftp/b;->a:Lcom/estrongs/android/pop/ftp/a;

    iget-object v4, v4, Lcom/estrongs/android/pop/ftp/a;->j:Lcom/estrongs/android/pop/ftp/d;

    invoke-interface {v4, v5, v6, v7, v8}, Lcom/estrongs/android/pop/ftp/d;->a(JJ)V

    goto :goto_14

    :catchall_5c
    move-exception v0

    :try_start_5d
    monitor-exit v4
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_5c

    throw v0

    :catch_5f
    move-exception v4

    goto :goto_2b
.end method
