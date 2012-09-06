.class public Lp/u;
.super Lt/c;
.source "SourceFile"


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Landroid/os/Looper;

.field private final c:Lp/r;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lr/aH;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 51
    const-string v0, "RouteFinderThread"

    invoke-direct {p0, v0}, Lt/c;-><init>(Ljava/lang/String;)V

    .line 53
    new-instance v0, Lp/r;

    invoke-direct {v0, p1, p2, p0}, Lp/r;-><init>(Landroid/content/Context;Lr/aH;Ljava/lang/Thread;)V

    iput-object v0, p0, Lp/u;->c:Lp/r;

    .line 55
    invoke-virtual {p0}, Lp/u;->start()V

    .line 59
    monitor-enter p0

    .line 60
    :goto_10
    :try_start_10
    iget-object v0, p0, Lp/u;->a:Landroid/os/Handler;
    :try_end_12
    .catchall {:try_start_10 .. :try_end_12} :catchall_1c

    if-nez v0, :cond_1a

    .line 62
    :try_start_14
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_1c
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_17} :catch_18

    goto :goto_10

    .line 63
    :catch_18
    move-exception v0

    goto :goto_10

    .line 67
    :cond_1a
    :try_start_1a
    monitor-exit p0

    .line 68
    return-void

    .line 67
    :catchall_1c
    move-exception v0

    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1a .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method private a(Landroid/os/Message;)V
    .registers 5
    .parameter

    .prologue
    .line 148
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_1c

    .line 161
    :goto_5
    return-void

    .line 151
    :pswitch_6
    invoke-direct {p0}, Lp/u;->e()V

    goto :goto_5

    .line 155
    :pswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lp/w;

    .line 158
    iget-object v1, p0, Lp/u;->c:Lp/r;

    invoke-static {v0}, Lp/w;->a(Lp/w;)Lm/b;

    move-result-object v2

    invoke-static {v0}, Lp/w;->b(Lp/w;)Lo/x;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lp/r;->a(Lm/b;Lo/x;)V

    goto :goto_5

    .line 148
    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_6
        :pswitch_a
    .end packed-switch
.end method

.method static synthetic a(Lp/u;Landroid/os/Message;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lp/u;->a(Landroid/os/Message;)V

    return-void
.end method

.method private declared-synchronized d()V
    .registers 2

    .prologue
    .line 115
    monitor-enter p0

    :try_start_1
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 116
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lp/u;->b:Landroid/os/Looper;

    .line 117
    new-instance v0, Lp/v;

    invoke-direct {v0, p0}, Lp/v;-><init>(Lp/u;)V

    iput-object v0, p0, Lp/u;->a:Landroid/os/Handler;

    .line 126
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 127
    monitor-exit p0

    return-void

    .line 115
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private e()V
    .registers 2

    .prologue
    .line 132
    invoke-direct {p0}, Lp/u;->f()V

    .line 133
    iget-object v0, p0, Lp/u;->b:Landroid/os/Looper;

    if-eqz v0, :cond_f

    .line 134
    iget-object v0, p0, Lp/u;->b:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 135
    const/4 v0, 0x0

    iput-object v0, p0, Lp/u;->b:Landroid/os/Looper;

    .line 137
    :cond_f
    return-void
.end method

.method private final f()V
    .registers 3

    .prologue
    .line 168
    invoke-static {}, Lcom/google/googlenav/common/c;->a()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-eq v0, p0, :cond_14

    .line 169
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Operation must be called on RouteFinderThread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_14
    return-void
.end method


# virtual methods
.method public a(Lm/b;Lo/x;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lp/u;->a:Landroid/os/Handler;

    iget-object v1, p0, Lp/u;->a:Landroid/os/Handler;

    const/4 v2, 0x1

    new-instance v3, Lp/w;

    const/4 v4, 0x0

    invoke-direct {v3, p1, p2, v4}, Lp/w;-><init>(Lm/b;Lo/x;Lp/v;)V

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 75
    return-void
.end method

.method public a(Lp/t;)V
    .registers 3
    .parameter

    .prologue
    .line 98
    iget-object v0, p0, Lp/u;->c:Lp/r;

    invoke-virtual {v0, p1}, Lp/r;->a(Lp/t;)V

    .line 99
    return-void
.end method

.method public b()V
    .registers 4

    .prologue
    .line 78
    iget-object v0, p0, Lp/u;->a:Landroid/os/Handler;

    iget-object v1, p0, Lp/u;->a:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 81
    :try_start_c
    invoke-virtual {p0}, Lp/u;->join()V
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_f} :catch_10

    .line 85
    :goto_f
    return-void

    .line 82
    :catch_10
    move-exception v0

    goto :goto_f
.end method

.method public c()V
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Lp/u;->c:Lp/r;

    invoke-virtual {v0}, Lp/r;->a()V

    .line 92
    return-void
.end method

.method public n_()V
    .registers 5

    .prologue
    .line 104
    const/4 v0, 0x1

    :try_start_1
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_4} :catch_b

    .line 109
    :goto_4
    invoke-direct {p0}, Lp/u;->d()V

    .line 110
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 112
    return-void

    .line 105
    :catch_b
    move-exception v0

    .line 106
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

    invoke-static {v1, v0}, Lh/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method
