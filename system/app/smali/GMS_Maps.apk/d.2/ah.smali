.class Ld/ah;
.super Landroid/os/Handler;

# interfaces
.implements Ld/s;


# instance fields
.field final synthetic a:Ld/ad;

.field private final b:Ljava/util/concurrent/locks/ReentrantLock;

.field private final c:Ljava/util/concurrent/locks/Condition;

.field private volatile d:I

.field private volatile e:Z

.field private final f:Ld/ae;

.field private final g:Ld/E;

.field private volatile h:Z


# direct methods
.method public constructor <init>(Ld/ad;Landroid/os/Looper;)V
    .registers 7

    const/4 v3, 0x0

    iput-object p1, p0, Ld/ah;->a:Ld/ad;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Ld/ah;->b:Ljava/util/concurrent/locks/ReentrantLock;

    iget-object v0, p0, Ld/ah;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Ld/ah;->c:Ljava/util/concurrent/locks/Condition;

    iput v3, p0, Ld/ah;->d:I

    iput-boolean v3, p0, Ld/ah;->e:Z

    new-instance v0, Ld/ae;

    const/high16 v1, 0x4396

    invoke-direct {v0, v1}, Ld/ae;-><init>(F)V

    iput-object v0, p0, Ld/ah;->f:Ld/ae;

    new-instance v0, Ld/E;

    const-wide/32 v1, 0xea60

    invoke-direct {v0, v1, v2}, Ld/E;-><init>(J)V

    iput-object v0, p0, Ld/ah;->g:Ld/E;

    iput-boolean v3, p0, Ld/ah;->h:Z

    return-void
.end method

.method private a(LW/a;LW/a;)V
    .registers 8

    const/4 v0, 0x0

    const/4 v4, 0x0

    iget-object v1, p0, Ld/ah;->a:Ld/ad;

    iget-object v2, p0, Ld/ah;->a:Ld/ad;

    invoke-static {v2}, Ld/ad;->c(Ld/ad;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p1, p2, v2}, Ld/ad;->a(Ld/ad;LW/a;LW/a;Ljava/lang/String;)LW/a;

    move-result-object v2

    iget-boolean v1, p0, Ld/ah;->h:Z

    if-nez v1, :cond_1a

    iget-object v1, p0, Ld/ah;->a:Ld/ad;

    invoke-static {v1}, Ld/ad;->d(Ld/ad;)Z

    move-result v1

    if-eqz v1, :cond_41

    :cond_1a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Will not send to MASF: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v1, p0, Ld/ah;->h:Z

    if-eqz v1, :cond_3e

    const-string v1, "Too many server errors."

    :goto_2b
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ld/ak;

    check-cast v0, LW/a;

    invoke-direct {v3, v4, v0, v1}, Ld/ak;-><init>(ZLW/a;Ljava/lang/String;)V

    invoke-direct {p0, v2, v3}, Ld/ah;->d(LW/a;Ld/ak;)V

    :cond_3d
    :goto_3d
    return-void

    :cond_3e
    const-string v1, "Interrupted by client."

    goto :goto_2b

    :cond_41
    iget-object v1, p0, Ld/ah;->a:Ld/ad;

    invoke-static {v1}, Ld/ad;->e(Ld/ad;)Ld/O;

    move-result-object v1

    invoke-virtual {v1, v2, p0}, Ld/O;->a(LW/a;Ld/s;)Z

    move-result v1

    if-nez v1, :cond_3d

    new-instance v1, Ld/ak;

    check-cast v0, LW/a;

    const-string v3, "Can not send to MASF."

    invoke-direct {v1, v4, v0, v3}, Ld/ak;-><init>(ZLW/a;Ljava/lang/String;)V

    invoke-direct {p0, v2, v1}, Ld/ah;->d(LW/a;Ld/ak;)V

    goto :goto_3d
.end method

.method private b(LW/a;Ld/ak;)V
    .registers 5

    const/4 v0, 0x2

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p0, v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Ld/ah;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    move-result v0

    const-string v1, "There is pending result before handler thread exits."

    invoke-static {v0, v1}, Ld/ax;->b(ZLjava/lang/Object;)V

    return-void
.end method

.method private b()Z
    .registers 2

    iget v0, p0, Ld/ah;->d:I

    if-nez v0, :cond_e

    iget-boolean v0, p0, Ld/ah;->e:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Ld/ah;->sendEmptyMessage(I)Z

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private c()V
    .registers 3

    iget v0, p0, Ld/ah;->d:I

    if-nez v0, :cond_3d

    const/4 v0, 0x1

    :goto_5
    const-string v1, "pending requests are not 0 before quiting."

    invoke-static {v0, v1}, Ld/ax;->b(ZLjava/lang/Object;)V

    iget-object v0, p0, Ld/ah;->a:Ld/ad;

    invoke-static {v0}, Ld/ad;->f(Ld/ad;)Ld/L;

    move-result-object v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Ld/ah;->a:Ld/ad;

    invoke-static {v0}, Ld/ad;->f(Ld/ad;)Ld/L;

    move-result-object v0

    iget-object v1, p0, Ld/ah;->a:Ld/ad;

    iget-object v1, v1, Ld/ad;->d:Ld/aq;

    invoke-virtual {v0, v1}, Ld/L;->a(Ld/aq;)V

    iget-object v0, p0, Ld/ah;->a:Ld/ad;

    invoke-static {v0}, Ld/ad;->f(Ld/ad;)Ld/L;

    move-result-object v0

    invoke-virtual {v0}, Ld/L;->d()V

    :cond_28
    iget-object v0, p0, Ld/ah;->a:Ld/ad;

    iget-object v0, v0, Ld/ad;->a:Ld/C;

    if-eqz v0, :cond_35

    iget-object v0, p0, Ld/ah;->a:Ld/ad;

    iget-object v0, v0, Ld/ad;->a:Ld/C;

    invoke-interface {v0}, Ld/C;->i()V

    :cond_35
    invoke-virtual {p0}, Ld/ah;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    return-void

    :cond_3d
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private c(LW/a;Ld/ak;)V
    .registers 5

    iget-object v0, p0, Ld/ah;->a:Ld/ad;

    invoke-static {v0}, Ld/ad;->c(Ld/ad;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_9
    const-string v1, "session ID should not be null in asynchronized mode."

    invoke-static {v0, v1}, Ld/ax;->b(ZLjava/lang/Object;)V

    invoke-direct {p0, p1, p2}, Ld/ah;->d(LW/a;Ld/ak;)V

    return-void

    :cond_12
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private d(LW/a;Ld/ak;)V
    .registers 7

    const/4 v2, 0x3

    :try_start_1
    invoke-virtual {p2}, Ld/ak;->b()LW/a;

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, LW/a;->f(I)LW/a;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, LW/a;->c(I)I

    move-result v0

    invoke-virtual {p2}, Ld/ak;->a()Z

    move-result v1

    if-eqz v1, :cond_44

    iget-object v1, p0, Ld/ah;->a:Ld/ad;

    iget-object v1, v1, Ld/ad;->a:Ld/C;

    if-eqz v1, :cond_2b

    iget-object v1, p0, Ld/ah;->a:Ld/ad;

    iget-object v1, v1, Ld/ad;->a:Ld/C;

    iget-object v2, p0, Ld/ah;->a:Ld/ad;

    invoke-static {v2}, Ld/ad;->c(Ld/ad;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Ld/ak;->b()LW/a;

    move-result-object v3

    invoke-interface {v1, v2, v0, v3}, Ld/C;->a(Ljava/lang/String;ILW/a;)V
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_60

    :cond_2b
    :goto_2b
    iget-object v0, p0, Ld/ah;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget v0, p0, Ld/ah;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ld/ah;->d:I

    invoke-direct {p0}, Ld/ah;->b()Z

    iget-object v0, p0, Ld/ah;->c:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    iget-object v0, p0, Ld/ah;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_44
    :try_start_44
    iget-object v1, p0, Ld/ah;->g:Ld/E;

    invoke-virtual {v1}, Ld/E;->a()V

    iget-object v1, p0, Ld/ah;->g:Ld/E;

    invoke-virtual {v1}, Ld/E;->b()I

    move-result v1

    if-le v1, v2, :cond_54

    const/4 v1, 0x1

    iput-boolean v1, p0, Ld/ah;->h:Z

    :cond_54
    iget-object v1, p0, Ld/ah;->a:Ld/ad;

    iget-object v2, p0, Ld/ah;->a:Ld/ad;

    invoke-static {v2}, Ld/ad;->c(Ld/ad;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p1, p2, v0, v2}, Ld/ad;->a(Ld/ad;LW/a;Ld/ak;ILjava/lang/String;)V
    :try_end_5f
    .catchall {:try_start_44 .. :try_end_5f} :catchall_60

    goto :goto_2b

    :catchall_60
    move-exception v0

    iget-object v1, p0, Ld/ah;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget v1, p0, Ld/ah;->d:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ld/ah;->d:I

    invoke-direct {p0}, Ld/ah;->b()Z

    iget-object v1, p0, Ld/ah;->c:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    iget-object v1, p0, Ld/ah;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method


# virtual methods
.method public declared-synchronized a()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ld/ah;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ld/ah;->e:Z

    invoke-direct {p0}, Ld/ah;->b()Z

    move-result v0

    if-nez v0, :cond_f

    :cond_f
    iget-object v0, p0, Ld/ah;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    monitor-exit p0

    return-void

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(LW/a;Ld/ak;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ld/ah;->b(LW/a;Ld/ak;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    check-cast p1, LW/a;

    check-cast p2, Ld/ak;

    invoke-virtual {p0, p1, p2}, Ld/ah;->a(LW/a;Ld/ak;)V

    return-void
.end method

.method public declared-synchronized a(LW/a;LW/a;Z)Z
    .registers 9

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Ld/ah;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_1c

    :goto_7
    :try_start_7
    iget-boolean v1, p0, Ld/ah;->e:Z
    :try_end_9
    .catchall {:try_start_7 .. :try_end_9} :catchall_68
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_9} :catch_61

    if-eqz v1, :cond_12

    :try_start_b
    iget-object v1, p0, Ld/ah;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_1c

    :goto_10
    monitor-exit p0

    return v0

    :cond_12
    :try_start_12
    iget-boolean v1, p0, Ld/ah;->h:Z
    :try_end_14
    .catchall {:try_start_12 .. :try_end_14} :catchall_68
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_14} :catch_61

    if-eqz v1, :cond_1f

    :try_start_16
    iget-object v1, p0, Ld/ah;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_1b
    .catchall {:try_start_16 .. :try_end_1b} :catchall_1c

    goto :goto_10

    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1f
    :try_start_1f
    iget v1, p0, Ld/ah;->d:I

    const/16 v2, 0x14

    if-ge v1, v2, :cond_53

    const/4 v1, 0x1

    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Ld/ah;->a:Ld/ad;

    invoke-static {v2}, Ld/ad;->b(Ld/ad;)Ld/ah;

    move-result-object v2

    iget-object v3, p0, Ld/ah;->f:Ld/ae;

    invoke-virtual {v3}, Ld/ae;->a()J

    move-result-wide v3

    invoke-virtual {v2, v1, v3, v4}, Ld/ah;->sendMessageAtTime(Landroid/os/Message;J)Z

    move-result v1

    if-eqz v1, :cond_4c

    iget v2, p0, Ld/ah;->d:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ld/ah;->d:I

    iget-object v2, p0, Ld/ah;->f:Ld/ae;

    invoke-virtual {v2}, Ld/ae;->b()V
    :try_end_4c
    .catchall {:try_start_1f .. :try_end_4c} :catchall_68
    .catch Ljava/lang/InterruptedException; {:try_start_1f .. :try_end_4c} :catch_61

    :cond_4c
    :try_start_4c
    iget-object v0, p0, Ld/ah;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move v0, v1

    goto :goto_10

    :cond_53
    if-nez p3, :cond_5b

    iget-object v1, p0, Ld/ah;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_5a
    .catchall {:try_start_4c .. :try_end_5a} :catchall_1c

    goto :goto_10

    :cond_5b
    :try_start_5b
    iget-object v1, p0, Ld/ah;->c:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_60
    .catchall {:try_start_5b .. :try_end_60} :catchall_68
    .catch Ljava/lang/InterruptedException; {:try_start_5b .. :try_end_60} :catch_61

    goto :goto_7

    :catch_61
    move-exception v1

    :try_start_62
    iget-object v1, p0, Ld/ah;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_10

    :catchall_68
    move-exception v0

    iget-object v1, p0, Ld/ah;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
    :try_end_6f
    .catchall {:try_start_62 .. :try_end_6f} :catchall_1c
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_2a

    :goto_5
    return-void

    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, LW/a;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, LW/a;

    invoke-direct {p0, v1, v0}, Ld/ah;->a(LW/a;LW/a;)V

    goto :goto_5

    :pswitch_16
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, LW/a;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ld/ak;

    invoke-direct {p0, v1, v0}, Ld/ah;->c(LW/a;Ld/ak;)V

    goto :goto_5

    :pswitch_26
    invoke-direct {p0}, Ld/ah;->c()V

    goto :goto_5

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_6
        :pswitch_16
        :pswitch_26
    .end packed-switch
.end method
