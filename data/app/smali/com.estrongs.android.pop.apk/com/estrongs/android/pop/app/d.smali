.class Lcom/estrongs/android/pop/app/d;
.super Lcom/estrongs/io/a/a/a;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/ArchiveProgressActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/ArchiveProgressActivity;Lcom/estrongs/io/archive/d;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/estrongs/android/pop/app/d;->a:Lcom/estrongs/android/pop/app/ArchiveProgressActivity;

    invoke-direct {p0, p2, p3}, Lcom/estrongs/io/a/a/a;-><init>(Lcom/estrongs/io/archive/d;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/d;)Lcom/estrongs/android/pop/app/ArchiveProgressActivity;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/d;->a:Lcom/estrongs/android/pop/app/ArchiveProgressActivity;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/d;->a:Lcom/estrongs/android/pop/app/ArchiveProgressActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->a(Lcom/estrongs/android/pop/app/ArchiveProgressActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/estrongs/android/pop/app/d;->a:Lcom/estrongs/android/pop/app/ArchiveProgressActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->b(Lcom/estrongs/android/pop/app/ArchiveProgressActivity;)Lcom/estrongs/android/pop/app/cp;

    move-result-object v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/estrongs/android/pop/app/d;->a:Lcom/estrongs/android/pop/app/ArchiveProgressActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->b(Lcom/estrongs/android/pop/app/ArchiveProgressActivity;)Lcom/estrongs/android/pop/app/cp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/cp;->b()Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/estrongs/android/pop/app/d;->a:Lcom/estrongs/android/pop/app/ArchiveProgressActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->a(Lcom/estrongs/android/pop/app/ArchiveProgressActivity;)Ljava/lang/String;

    move-result-object v0

    :goto_22
    return-object v0

    :cond_23
    iget-object v0, p0, Lcom/estrongs/android/pop/app/d;->d:Lcom/estrongs/io/archive/d;

    new-instance v1, Lcom/estrongs/android/pop/app/e;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/e;-><init>(Lcom/estrongs/android/pop/app/d;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/io/archive/d;->post(Ljava/lang/Runnable;)Z

    :try_start_2d
    monitor-enter p0
    :try_end_2e
    .catch Ljava/lang/InterruptedException; {:try_start_2d .. :try_end_2e} :catch_3c

    :try_start_2e
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    monitor-exit p0
    :try_end_32
    .catchall {:try_start_2e .. :try_end_32} :catchall_39

    :goto_32
    iget-object v0, p0, Lcom/estrongs/android/pop/app/d;->a:Lcom/estrongs/android/pop/app/ArchiveProgressActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->a(Lcom/estrongs/android/pop/app/ArchiveProgressActivity;)Ljava/lang/String;

    move-result-object v0

    goto :goto_22

    :catchall_39
    move-exception v0

    :try_start_3a
    monitor-exit p0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    :try_start_3b
    throw v0
    :try_end_3c
    .catch Ljava/lang/InterruptedException; {:try_start_3b .. :try_end_3c} :catch_3c

    :catch_3c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_32
.end method
