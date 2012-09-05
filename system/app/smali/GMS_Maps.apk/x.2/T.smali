.class public Lx/T;
.super Lz/d;

# interfaces
.implements Lat/p;


# static fields
.field private static a:Lx/T;


# instance fields
.field private final b:Lat/h;

.field private final c:Lx/O;

.field private final d:Ljava/io/File;

.field private e:Z

.field private f:Landroid/os/Handler;

.field private final g:Ljava/util/Map;

.field private h:Z


# direct methods
.method protected constructor <init>(Lat/h;Ljava/io/File;Ljava/util/Locale;)V
    .registers 5

    const-string v0, "ibs"

    invoke-direct {p0, v0}, Lz/d;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lx/T;->b:Lat/h;

    new-instance v0, Lx/O;

    invoke-direct {v0, p3}, Lx/O;-><init>(Ljava/util/Locale;)V

    iput-object v0, p0, Lx/T;->c:Lx/O;

    iput-object p2, p0, Lx/T;->d:Ljava/io/File;

    invoke-static {}, LK/cb;->b()Ljava/util/LinkedHashMap;

    move-result-object v0

    iput-object v0, p0, Lx/T;->g:Ljava/util/Map;

    return-void
.end method

.method public static a(Lat/h;Ljava/io/File;Ljava/util/Locale;)Lx/T;
    .registers 4

    sget-object v0, Lx/T;->a:Lx/T;

    if-nez v0, :cond_b

    new-instance v0, Lx/T;

    invoke-direct {v0, p0, p1, p2}, Lx/T;-><init>(Lat/h;Ljava/io/File;Ljava/util/Locale;)V

    sput-object v0, Lx/T;->a:Lx/T;

    :cond_b
    sget-object v0, Lx/T;->a:Lx/T;

    return-object v0
.end method

.method private a(Lx/S;)V
    .registers 5

    invoke-direct {p0}, Lx/T;->k()V

    iget-object v0, p0, Lx/T;->g:Ljava/util/Map;

    invoke-virtual {p1}, Lx/S;->c()Lt/r;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_f

    :cond_f
    const/4 v0, 0x0

    invoke-virtual {p1}, Lx/S;->h()Z

    move-result v1

    if-eqz v1, :cond_23

    iget-object v1, p0, Lx/T;->c:Lx/O;

    invoke-virtual {p1}, Lx/S;->c()Lt/r;

    move-result-object v2

    invoke-virtual {v1, v2}, Lx/O;->c(Lt/r;)V

    :cond_1f
    :goto_1f
    invoke-virtual {p1, v0}, Lx/S;->a(Lt/q;)V

    return-void

    :cond_23
    invoke-virtual {p1}, Lx/S;->g()Lam/b;

    move-result-object v1

    if-eqz v1, :cond_1f

    iget-object v0, p0, Lx/T;->c:Lx/O;

    invoke-virtual {p1}, Lx/S;->c()Lt/r;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lx/O;->a(Lt/r;Lam/b;)Lt/q;

    move-result-object v0

    goto :goto_1f
.end method

.method static synthetic a(Lx/T;)V
    .registers 1

    invoke-direct {p0}, Lx/T;->i()V

    return-void
.end method

.method static synthetic a(Lx/T;Lx/S;)V
    .registers 2

    invoke-direct {p0, p1}, Lx/T;->a(Lx/S;)V

    return-void
.end method

.method static synthetic a(Lx/T;Lx/V;)V
    .registers 2

    invoke-direct {p0, p1}, Lx/T;->a(Lx/V;)V

    return-void
.end method

.method private a(Lx/V;)V
    .registers 8

    const/4 v5, 0x1

    invoke-direct {p0}, Lx/T;->k()V

    iget-object v1, p1, Lx/V;->a:Lt/r;

    iget-object v2, p1, Lx/V;->b:Lx/R;

    iget-object v0, p0, Lx/T;->c:Lx/O;

    invoke-virtual {v0, v1}, Lx/O;->a(Lt/r;)Lt/q;

    move-result-object v0

    if-eqz v0, :cond_2b

    if-eqz v2, :cond_1f

    iget-object v3, p0, Lx/T;->c:Lx/O;

    invoke-virtual {v3, v0}, Lx/O;->a(Lt/q;)Z

    move-result v3

    if-eqz v3, :cond_26

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v1, v3, v4}, Lx/R;->a(Lt/r;ILt/q;)V

    :cond_1f
    :goto_1f
    invoke-virtual {v0}, Lt/q;->e()Z

    move-result v0

    if-nez v0, :cond_2b

    :cond_25
    :goto_25
    return-void

    :cond_26
    const/4 v3, 0x0

    invoke-interface {v2, v1, v3, v0}, Lx/R;->a(Lt/r;ILt/q;)V

    goto :goto_1f

    :cond_2b
    iget-object v0, p0, Lx/T;->g:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx/S;

    if-nez v0, :cond_3f

    new-instance v0, Lx/S;

    invoke-direct {v0, v1}, Lx/S;-><init>(Lt/r;)V

    iget-object v3, p0, Lx/T;->g:Ljava/util/Map;

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3f
    if-eqz v2, :cond_44

    invoke-virtual {v0, v2}, Lx/S;->a(Lx/R;)V

    :cond_44
    invoke-virtual {v0}, Lx/S;->e()Z

    move-result v0

    if-nez v0, :cond_25

    iget-boolean v0, p0, Lx/T;->h:Z

    if-nez v0, :cond_25

    iget-object v0, p0, Lx/T;->f:Landroid/os/Handler;

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iput-boolean v5, p0, Lx/T;->h:Z

    goto :goto_25
.end method

.method public static b()Lx/T;
    .registers 1

    sget-object v0, Lx/T;->a:Lx/T;

    return-object v0
.end method

.method private b(Lx/S;)V
    .registers 4

    invoke-direct {p0}, Lx/T;->k()V

    iget-object v0, p0, Lx/T;->g:Ljava/util/Map;

    invoke-virtual {p1}, Lx/S;->c()Lt/r;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_f

    :cond_f
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lx/S;->a(Lt/q;)V

    return-void
.end method

.method static synthetic b(Lx/T;Lx/S;)V
    .registers 2

    invoke-direct {p0, p1}, Lx/T;->b(Lx/S;)V

    return-void
.end method

.method public static c()V
    .registers 1

    sget-object v0, Lx/T;->a:Lx/T;

    if-eqz v0, :cond_c

    sget-object v0, Lx/T;->a:Lx/T;

    invoke-virtual {v0}, Lx/T;->e()V

    const/4 v0, 0x0

    sput-object v0, Lx/T;->a:Lx/T;

    :cond_c
    return-void
.end method

.method private i()V
    .registers 4

    invoke-direct {p0}, Lx/T;->k()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lx/T;->h:Z

    iget-object v0, p0, Lx/T;->b:Lat/h;

    invoke-virtual {v0}, Lat/h;->f()V

    :try_start_b
    iget-object v0, p0, Lx/T;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_15
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx/S;

    invoke-virtual {v0}, Lx/S;->e()Z

    move-result v2

    if-nez v2, :cond_15

    iget-object v2, p0, Lx/T;->b:Lat/h;

    invoke-virtual {v2, v0}, Lat/h;->c(Lat/g;)V

    invoke-virtual {v0}, Lx/S;->d()V
    :try_end_2f
    .catchall {:try_start_b .. :try_end_2f} :catchall_30

    goto :goto_15

    :catchall_30
    move-exception v0

    iget-object v1, p0, Lx/T;->b:Lat/h;

    invoke-virtual {v1}, Lat/h;->g()V

    throw v0

    :cond_37
    iget-object v0, p0, Lx/T;->b:Lat/h;

    invoke-virtual {v0}, Lat/h;->g()V

    return-void
.end method

.method private j()V
    .registers 2

    :try_start_0
    monitor-enter p0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_1} :catch_c

    :goto_1
    :try_start_1
    iget-boolean v0, p0, Lx/T;->e:Z

    if-nez v0, :cond_15

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_1

    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    :try_start_b
    throw v0
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_c} :catch_c

    :catch_c
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :goto_14
    return-void

    :cond_15
    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_9

    goto :goto_14
.end method

.method private k()V
    .registers 3

    invoke-static {}, Ln/a;->b()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-eq v0, p0, :cond_14

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Operation must be called on IndoorBuildingStore thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    return-void
.end method


# virtual methods
.method public a(Lt/r;)Lt/q;
    .registers 4

    iget-object v0, p0, Lx/T;->c:Lx/O;

    invoke-virtual {v0, p1}, Lx/O;->b(Lt/r;)Lt/q;

    move-result-object v0

    iget-object v1, p0, Lx/T;->c:Lx/O;

    invoke-virtual {v1, v0}, Lx/O;->a(Lt/q;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v0, 0x0

    :cond_f
    return-object v0
.end method

.method public a()V
    .registers 5

    :try_start_0
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/cS;->e()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_7
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_7} :catch_2f

    :goto_7
    invoke-static {}, Landroid/os/Looper;->prepare()V

    new-instance v0, Lx/U;

    invoke-direct {v0, p0}, Lx/U;-><init>(Lx/T;)V

    iput-object v0, p0, Lx/T;->f:Landroid/os/Handler;

    monitor-enter p0

    :try_start_12
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_12 .. :try_end_16} :catchall_4b

    invoke-static {}, Ln/b;->b()Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lx/T;->c:Lx/O;

    iget-object v1, p0, Lx/T;->d:Ljava/io/File;

    invoke-virtual {v0, v1}, Lx/O;->a(Ljava/io/File;)V

    :cond_23
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_25
    iput-boolean v0, p0, Lx/T;->e:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_25 .. :try_end_2b} :catchall_4e

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void

    :catch_2f
    move-exception v0

    invoke-virtual {p0}, Lx/T;->getName()Ljava/lang/String;

    move-result-object v1

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

    goto :goto_7

    :catchall_4b
    move-exception v0

    :try_start_4c
    monitor-exit p0
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4b

    throw v0

    :catchall_4e
    move-exception v0

    :try_start_4f
    monitor-exit p0
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_4e

    throw v0
.end method

.method public a(IZLjava/lang/String;)V
    .registers 4

    return-void
.end method

.method public a(Lat/g;)V
    .registers 5

    invoke-interface {p1}, Lat/g;->a()I

    move-result v0

    const/16 v1, 0x76

    if-ne v0, v1, :cond_14

    iget-object v0, p0, Lx/T;->f:Landroid/os/Handler;

    iget-object v1, p0, Lx/T;->f:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_14
    return-void
.end method

.method public a(Lt/r;Lx/R;)V
    .registers 7

    iget-object v0, p0, Lx/T;->f:Landroid/os/Handler;

    iget-object v1, p0, Lx/T;->f:Landroid/os/Handler;

    const/4 v2, 0x0

    new-instance v3, Lx/V;

    invoke-direct {v3, p1, p2}, Lx/V;-><init>(Lt/r;Lx/R;)V

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public b(Lt/r;)Lt/u;
    .registers 3

    invoke-virtual {p0, p1}, Lx/T;->a(Lt/r;)Lt/q;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0, p1}, Lt/q;->a(Lt/r;)Lt/u;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public b(Lat/g;)V
    .registers 5

    invoke-interface {p1}, Lat/g;->a()I

    move-result v0

    const/16 v1, 0x76

    if-ne v0, v1, :cond_14

    iget-object v0, p0, Lx/T;->f:Landroid/os/Handler;

    iget-object v1, p0, Lx/T;->f:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_14
    return-void
.end method

.method public d()V
    .registers 2

    invoke-virtual {p0}, Lx/T;->start()V

    :try_start_3
    monitor-enter p0
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_4} :catch_f

    :goto_4
    :try_start_4
    iget-object v0, p0, Lx/T;->f:Landroid/os/Handler;

    if-nez v0, :cond_1d

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_4

    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_c

    :try_start_e
    throw v0
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_f} :catch_f

    :catch_f
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :goto_17
    iget-object v0, p0, Lx/T;->b:Lat/h;

    invoke-virtual {v0, p0}, Lat/h;->a(Lat/p;)V

    return-void

    :cond_1d
    :try_start_1d
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_c

    goto :goto_17
.end method

.method public e()V
    .registers 2

    iget-object v0, p0, Lx/T;->b:Lat/h;

    invoke-virtual {v0, p0}, Lat/h;->b(Lat/p;)V

    iget-object v0, p0, Lx/T;->f:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    :try_start_e
    invoke-virtual {p0}, Lx/T;->join()V
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_11} :catch_1f

    :goto_11
    iget-object v0, p0, Lx/T;->c:Lx/O;

    invoke-virtual {v0}, Lx/O;->e()V

    iget-object v0, p0, Lx/T;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1e

    :cond_1e
    return-void

    :catch_1f
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_11
.end method

.method public f()V
    .registers 2

    invoke-direct {p0}, Lx/T;->j()V

    iget-object v0, p0, Lx/T;->c:Lx/O;

    invoke-virtual {v0}, Lx/O;->c()V

    return-void
.end method

.method public g()V
    .registers 2

    invoke-direct {p0}, Lx/T;->j()V

    iget-object v0, p0, Lx/T;->c:Lx/O;

    invoke-virtual {v0}, Lx/O;->d()V

    return-void
.end method

.method public h()J
    .registers 3

    invoke-direct {p0}, Lx/T;->j()V

    iget-object v0, p0, Lx/T;->c:Lx/O;

    invoke-virtual {v0}, Lx/O;->f()J

    move-result-wide v0

    return-wide v0
.end method
