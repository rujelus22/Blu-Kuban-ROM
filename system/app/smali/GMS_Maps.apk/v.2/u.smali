.class public Lv/u;
.super Lz/d;


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Landroid/os/Looper;

.field private final c:Lv/r;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lx/ay;)V
    .registers 4

    const-string v0, "RouteFinderThread"

    invoke-direct {p0, v0}, Lz/d;-><init>(Ljava/lang/String;)V

    new-instance v0, Lv/r;

    invoke-direct {v0, p1, p2, p0}, Lv/r;-><init>(Landroid/content/Context;Lx/ay;Ljava/lang/Thread;)V

    iput-object v0, p0, Lv/u;->c:Lv/r;

    invoke-virtual {p0}, Lv/u;->start()V

    monitor-enter p0

    :goto_10
    :try_start_10
    iget-object v0, p0, Lv/u;->a:Landroid/os/Handler;
    :try_end_12
    .catchall {:try_start_10 .. :try_end_12} :catchall_1c

    if-nez v0, :cond_1a

    :try_start_14
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_1c
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_17} :catch_18

    goto :goto_10

    :catch_18
    move-exception v0

    goto :goto_10

    :cond_1a
    :try_start_1a
    monitor-exit p0

    return-void

    :catchall_1c
    move-exception v0

    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1a .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method private a(Landroid/os/Message;)V
    .registers 5

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_1c

    :goto_5
    return-void

    :pswitch_6
    invoke-direct {p0}, Lv/u;->e()V

    goto :goto_5

    :pswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lv/w;

    iget-object v1, p0, Lv/u;->c:Lv/r;

    invoke-static {v0}, Lv/w;->a(Lv/w;)Ls/b;

    move-result-object v2

    invoke-static {v0}, Lv/w;->b(Lv/w;)Lu/x;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lv/r;->a(Ls/b;Lu/x;)V

    goto :goto_5

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_6
        :pswitch_a
    .end packed-switch
.end method

.method static synthetic a(Lv/u;Landroid/os/Message;)V
    .registers 2

    invoke-direct {p0, p1}, Lv/u;->a(Landroid/os/Message;)V

    return-void
.end method

.method private declared-synchronized d()V
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-static {}, Landroid/os/Looper;->prepare()V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lv/u;->b:Landroid/os/Looper;

    new-instance v0, Lv/v;

    invoke-direct {v0, p0}, Lv/v;-><init>(Lv/u;)V

    iput-object v0, p0, Lv/u;->a:Landroid/os/Handler;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    monitor-exit p0

    return-void

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private e()V
    .registers 2

    invoke-direct {p0}, Lv/u;->f()V

    iget-object v0, p0, Lv/u;->b:Landroid/os/Looper;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lv/u;->b:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    const/4 v0, 0x0

    iput-object v0, p0, Lv/u;->b:Landroid/os/Looper;

    :cond_f
    return-void
.end method

.method private final f()V
    .registers 3

    invoke-static {}, Ln/a;->b()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-eq v0, p0, :cond_14

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Operation must be called on RouteFinderThread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    return-void
.end method


# virtual methods
.method public a()V
    .registers 5

    const/4 v0, 0x1

    :try_start_1
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_4} :catch_b

    :goto_4
    invoke-direct {p0}, Lv/u;->d()V

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void

    :catch_b
    move-exception v0

    const-string v1, "RouteFinderThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not set thread priority: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ln/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method

.method public a(Ls/b;Lu/x;)V
    .registers 8

    iget-object v0, p0, Lv/u;->a:Landroid/os/Handler;

    iget-object v1, p0, Lv/u;->a:Landroid/os/Handler;

    const/4 v2, 0x1

    new-instance v3, Lv/w;

    const/4 v4, 0x0

    invoke-direct {v3, p1, p2, v4}, Lv/w;-><init>(Ls/b;Lu/x;Lv/v;)V

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public a(Lv/t;)V
    .registers 3

    iget-object v0, p0, Lv/u;->c:Lv/r;

    invoke-virtual {v0, p1}, Lv/r;->a(Lv/t;)V

    return-void
.end method

.method public b()V
    .registers 4

    iget-object v0, p0, Lv/u;->a:Landroid/os/Handler;

    iget-object v1, p0, Lv/u;->a:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :try_start_c
    invoke-virtual {p0}, Lv/u;->join()V
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_f} :catch_10

    :goto_f
    return-void

    :catch_10
    move-exception v0

    goto :goto_f
.end method

.method public c()V
    .registers 2

    iget-object v0, p0, Lv/u;->c:Lv/r;

    invoke-virtual {v0}, Lv/r;->a()V

    return-void
.end method
