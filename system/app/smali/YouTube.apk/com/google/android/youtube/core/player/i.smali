.class final Lcom/google/android/youtube/core/player/i;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/player/d;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/player/d;)V
    .registers 2
    .parameter

    .prologue
    .line 448
    iput-object p1, p0, Lcom/google/android/youtube/core/player/i;->a:Lcom/google/android/youtube/core/player/d;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 452
    :try_start_1
    iget-object v0, p0, Lcom/google/android/youtube/core/player/i;->a:Lcom/google/android/youtube/core/player/d;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/d;->c(Lcom/google/android/youtube/core/player/d;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 453
    if-nez v0, :cond_3d

    .line 454
    new-instance v0, Ljava/io/IOException;

    const-string v1, "The file was deleted"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_b2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_17} :catch_17

    .line 466
    :catch_17
    move-exception v0

    .line 467
    :try_start_18
    iget-object v0, p0, Lcom/google/android/youtube/core/player/i;->a:Lcom/google/android/youtube/core/player/d;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/d;->d(Lcom/google/android/youtube/core/player/d;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 468
    iget-object v0, p0, Lcom/google/android/youtube/core/player/i;->a:Lcom/google/android/youtube/core/player/d;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/d;->f(Lcom/google/android/youtube/core/player/d;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    const-wide/32 v1, 0x40000

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 469
    const-string v0, "failed to read offsets, will retry"

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->c(Ljava/lang/String;)V
    :try_end_33
    .catchall {:try_start_18 .. :try_end_33} :catchall_b2

    .line 471
    iget-object v0, p0, Lcom/google/android/youtube/core/player/i;->a:Lcom/google/android/youtube/core/player/d;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/d;->i(Lcom/google/android/youtube/core/player/d;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 472
    :goto_3c
    return-void

    .line 456
    :cond_3d
    :try_start_3d
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 457
    iget-object v0, p0, Lcom/google/android/youtube/core/player/i;->a:Lcom/google/android/youtube/core/player/d;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/d;->d(Lcom/google/android/youtube/core/player/d;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-static {v1}, Lcom/google/android/youtube/core/player/mp4/e;->a(Ljava/io/InputStream;)Ljava/util/SortedMap;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 458
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 459
    iget-object v0, p0, Lcom/google/android/youtube/core/player/i;->a:Lcom/google/android/youtube/core/player/d;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/d;->f(Lcom/google/android/youtube/core/player/d;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/player/i;->a:Lcom/google/android/youtube/core/player/d;

    iget-object v2, p0, Lcom/google/android/youtube/core/player/i;->a:Lcom/google/android/youtube/core/player/d;

    invoke-static {v2}, Lcom/google/android/youtube/core/player/d;->e(Lcom/google/android/youtube/core/player/d;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/youtube/core/player/d;->a(Lcom/google/android/youtube/core/player/d;I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 460
    iget-object v0, p0, Lcom/google/android/youtube/core/player/i;->a:Lcom/google/android/youtube/core/player/d;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/d;->g(Lcom/google/android/youtube/core/player/d;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/youtube/core/player/i;->a:Lcom/google/android/youtube/core/player/d;

    invoke-static {v2}, Lcom/google/android/youtube/core/player/d;->f(Lcom/google/android/youtube/core/player/d;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_a4

    .line 461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loaded offsets, will prepare at offset "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/player/i;->a:Lcom/google/android/youtube/core/player/d;

    invoke-static {v1}, Lcom/google/android/youtube/core/player/d;->f(Lcom/google/android/youtube/core/player/d;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V
    :try_end_9a
    .catchall {:try_start_3d .. :try_end_9a} :catchall_b2
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_9a} :catch_17

    .line 471
    :goto_9a
    iget-object v0, p0, Lcom/google/android/youtube/core/player/i;->a:Lcom/google/android/youtube/core/player/d;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/d;->i(Lcom/google/android/youtube/core/player/d;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_3c

    .line 463
    :cond_a4
    :try_start_a4
    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    .line 464
    iget-object v0, p0, Lcom/google/android/youtube/core/player/i;->a:Lcom/google/android/youtube/core/player/d;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/d;->h(Lcom/google/android/youtube/core/player/d;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_b1
    .catchall {:try_start_a4 .. :try_end_b1} :catchall_b2
    .catch Ljava/io/IOException; {:try_start_a4 .. :try_end_b1} :catch_17

    goto :goto_9a

    .line 471
    :catchall_b2
    move-exception v0

    iget-object v1, p0, Lcom/google/android/youtube/core/player/i;->a:Lcom/google/android/youtube/core/player/d;

    invoke-static {v1}, Lcom/google/android/youtube/core/player/d;->i(Lcom/google/android/youtube/core/player/d;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v0
.end method
