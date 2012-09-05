.class final Lcom/a/a/a/a/a/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/a/a/a/a/a/c;

.field private final synthetic b:Landroid/os/Handler;

.field private final synthetic c:J


# direct methods
.method constructor <init>(Lcom/a/a/a/a/a/c;Landroid/os/Handler;J)V
    .registers 5

    iput-object p1, p0, Lcom/a/a/a/a/a/e;->a:Lcom/a/a/a/a/a/c;

    iput-object p2, p0, Lcom/a/a/a/a/a/e;->b:Landroid/os/Handler;

    iput-wide p3, p0, Lcom/a/a/a/a/a/e;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 13

    const/4 v3, 0x0

    const/4 v2, 0x1

    :try_start_2
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    new-instance v5, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_12
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_12} :catch_60
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_12} :catch_102

    move-result v0

    int-to-long v6, v0

    move v1, v2

    :goto_15
    if-nez v1, :cond_29

    :goto_17
    iget-object v0, p0, Lcom/a/a/a/a/a/e;->a:Lcom/a/a/a/a/a/c;

    invoke-static {v0}, Lcom/a/a/a/a/a/c;->b(Lcom/a/a/a/a/a/c;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/a/a/a/a/a/e;->a:Lcom/a/a/a/a/a/c;

    invoke-static {v0}, Lcom/a/a/a/a/a/c;->b(Lcom/a/a/a/a/a/c;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_28
    :goto_28
    return-void

    :cond_29
    :try_start_29
    iget-object v0, p0, Lcom/a/a/a/a/a/e;->a:Lcom/a/a/a/a/a/c;

    invoke-static {v0}, Lcom/a/a/a/a/a/c;->b(Lcom/a/a/a/a/a/c;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lcom/a/a/a/a/a/e;->a:Lcom/a/a/a/a/a/c;

    invoke-static {v0}, Lcom/a/a/a/a/a/c;->c(Lcom/a/a/a/a/a/c;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lcom/a/a/a/a/a/e;->a:Lcom/a/a/a/a/a/c;

    invoke-static {v0}, Lcom/a/a/a/a/a/c;->c(Lcom/a/a/a/a/a/c;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4d

    iget-object v0, p0, Lcom/a/a/a/a/a/e;->a:Lcom/a/a/a/a/a/c;

    invoke-static {v0}, Lcom/a/a/a/a/a/c;->d(Lcom/a/a/a/a/a/c;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_69

    :cond_4d
    iget-object v0, p0, Lcom/a/a/a/a/a/e;->a:Lcom/a/a/a/a/a/c;

    invoke-static {v0}, Lcom/a/a/a/a/a/c;->b(Lcom/a/a/a/a/a/c;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/a/a/a/a/a/e;->a:Lcom/a/a/a/a/a/c;

    invoke-static {v0}, Lcom/a/a/a/a/a/c;->b(Lcom/a/a/a/a/a/c;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_5f
    .catch Ljava/lang/InterruptedException; {:try_start_29 .. :try_end_5f} :catch_60
    .catch Ljava/lang/RuntimeException; {:try_start_29 .. :try_end_5f} :catch_102

    goto :goto_28

    :catch_60
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_17

    :cond_69
    :try_start_69
    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v8, v0

    mul-long/2addr v8, v6

    const-wide/32 v10, 0x100000

    div-long/2addr v8, v10

    iget-object v0, p0, Lcom/a/a/a/a/a/e;->a:Lcom/a/a/a/a/a/c;

    invoke-static {v0}, Lcom/a/a/a/a/a/c;->e(Lcom/a/a/a/a/a/c;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    const-wide/16 v10, 0xa

    cmp-long v4, v8, v10

    if-ltz v4, :cond_87

    const/16 v4, 0x3e8

    if-le v0, v4, :cond_99

    :cond_87
    iget-object v0, p0, Lcom/a/a/a/a/a/e;->a:Lcom/a/a/a/a/a/c;

    invoke-static {v0}, Lcom/a/a/a/a/a/c;->f(Lcom/a/a/a/a/a/c;)Lcom/a/a/a/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/a/a/a/a;->b()V

    iget-object v0, p0, Lcom/a/a/a/a/a/e;->a:Lcom/a/a/a/a/a/c;

    invoke-static {v0}, Lcom/a/a/a/a/a/c;->e(Lcom/a/a/a/a/a/c;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    :cond_99
    iget-object v0, p0, Lcom/a/a/a/a/a/e;->a:Lcom/a/a/a/a/a/c;

    invoke-static {v0}, Lcom/a/a/a/a/a/c;->c(Lcom/a/a/a/a/a/c;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    const-wide/16 v8, 0x5

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v8, v9, v4}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/a/a/f;

    if-nez v0, :cond_ec

    move v4, v3

    :goto_ac
    iget-object v1, p0, Lcom/a/a/a/a/a/e;->b:Landroid/os/Handler;

    if-eqz v1, :cond_e9

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    const-string v1, "request_id"

    iget-wide v9, p0, Lcom/a/a/a/a/a/e;->c:J

    invoke-virtual {v8, v1, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v9, "response_finish"

    iget-object v1, p0, Lcom/a/a/a/a/a/e;->a:Lcom/a/a/a/a/a/c;

    invoke-static {v1}, Lcom/a/a/a/a/a/c;->c(Lcom/a/a/a/a/a/c;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_100

    move v1, v2

    :goto_cb
    invoke-virtual {v8, v9, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    if-eqz v0, :cond_d9

    const-string v1, "image"

    invoke-static {v0}, Lcom/a/a/a/a/a/f;->b(Lcom/a/a/a/a/a/f;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d9
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    invoke-virtual {v0, v8}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/a/a/a/a/a/e;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_e9
    move v1, v4

    goto/16 :goto_15

    :cond_ec
    invoke-static {v0}, Lcom/a/a/a/a/a/f;->a(Lcom/a/a/a/a/a/f;)Z

    move-result v4

    if-eqz v4, :cond_f9

    iget-object v4, p0, Lcom/a/a/a/a/a/e;->a:Lcom/a/a/a/a/a/c;

    invoke-static {v4}, Lcom/a/a/a/a/a/c;->a(Lcom/a/a/a/a/a/c;)V

    move v4, v1

    goto :goto_ac

    :cond_f9
    iget-object v4, p0, Lcom/a/a/a/a/a/e;->a:Lcom/a/a/a/a/a/c;

    invoke-static {v4, v0}, Lcom/a/a/a/a/a/c;->a(Lcom/a/a/a/a/a/c;Lcom/a/a/a/a/a/f;)V
    :try_end_fe
    .catch Ljava/lang/InterruptedException; {:try_start_69 .. :try_end_fe} :catch_60
    .catch Ljava/lang/RuntimeException; {:try_start_69 .. :try_end_fe} :catch_102

    move v4, v1

    goto :goto_ac

    :cond_100
    move v1, v3

    goto :goto_cb

    :catch_102
    move-exception v0

    const-string v1, "invokeThreadForSave Exception ........"

    invoke-static {v1, v0}, Lcom/a/a/a/a/c/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_17
.end method
