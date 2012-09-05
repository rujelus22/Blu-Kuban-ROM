.class Ld/as;
.super Ljava/lang/Thread;


# instance fields
.field private volatile a:Ld/C;

.field private volatile b:Landroid/content/Context;

.field private volatile c:Ld/w;

.field private volatile d:Ld/W;

.field private e:Ld/V;

.field private volatile f:LW/a;

.field private g:Ld/K;

.field private h:Ld/X;

.field private final i:Ljava/lang/Integer;

.field private final j:Lm/c;

.field private final k:LW/a;

.field private final l:Ljava/lang/Object;

.field private volatile m:Z

.field private final n:Ljava/util/concurrent/CountDownLatch;

.field private o:Ld/C;


# direct methods
.method constructor <init>(Landroid/content/Context;Ld/w;Ljava/util/concurrent/CountDownLatch;LW/a;Ljava/lang/Integer;Ld/C;Lm/c;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ld/as;->l:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Ld/as;->m:Z

    new-instance v0, Ld/at;

    invoke-direct {v0, p0}, Ld/at;-><init>(Ld/as;)V

    iput-object v0, p0, Ld/as;->o:Ld/C;

    const-string v0, "SignalCollector.ScannerThread"

    invoke-virtual {p0, v0}, Ld/as;->setName(Ljava/lang/String;)V

    iput-object p2, p0, Ld/as;->c:Ld/w;

    iput-object p1, p0, Ld/as;->b:Landroid/content/Context;

    iput-object p6, p0, Ld/as;->a:Ld/C;

    iput-object p5, p0, Ld/as;->i:Ljava/lang/Integer;

    iput-object p7, p0, Ld/as;->j:Lm/c;

    iput-object p3, p0, Ld/as;->n:Ljava/util/concurrent/CountDownLatch;

    iput-object p4, p0, Ld/as;->k:LW/a;

    return-void
.end method

.method static synthetic a(Ld/as;LW/a;)LW/a;
    .registers 2

    iput-object p1, p0, Ld/as;->f:LW/a;

    return-object p1
.end method

.method static synthetic a(Ld/as;Ld/X;)Ld/X;
    .registers 2

    iput-object p1, p0, Ld/as;->h:Ld/X;

    return-object p1
.end method

.method private a()V
    .registers 3

    iget-object v1, p0, Ld/as;->l:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Ld/as;->m:Z

    iget-object v0, p0, Ld/as;->e:Ld/V;

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Ld/as;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Ld/as;->e:Ld/V;

    invoke-virtual {v0}, Ld/V;->a()V

    :cond_15
    iget-object v0, p0, Ld/as;->h:Ld/X;

    if-eqz v0, :cond_24

    invoke-virtual {p0}, Ld/as;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Ld/as;->h:Ld/X;

    invoke-virtual {v0}, Ld/X;->a()V

    :cond_24
    monitor-exit v1

    return-void

    :catchall_26
    move-exception v0

    monitor-exit v1
    :try_end_28
    .catchall {:try_start_4 .. :try_end_28} :catchall_26

    throw v0
.end method

.method static synthetic a(Ld/as;)V
    .registers 1

    invoke-direct {p0}, Ld/as;->a()V

    return-void
.end method

.method static synthetic b(Ld/as;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Ld/as;->l:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic c(Ld/as;)LW/a;
    .registers 2

    iget-object v0, p0, Ld/as;->f:LW/a;

    return-object v0
.end method

.method static synthetic d(Ld/as;)Ld/K;
    .registers 2

    iget-object v0, p0, Ld/as;->g:Ld/K;

    return-object v0
.end method

.method static synthetic e(Ld/as;)Z
    .registers 2

    iget-boolean v0, p0, Ld/as;->m:Z

    return v0
.end method

.method static synthetic f(Ld/as;)Ld/C;
    .registers 2

    iget-object v0, p0, Ld/as;->a:Ld/C;

    return-object v0
.end method

.method static synthetic g(Ld/as;)Lm/c;
    .registers 2

    iget-object v0, p0, Ld/as;->j:Lm/c;

    return-object v0
.end method

.method static synthetic h(Ld/as;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Ld/as;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic i(Ld/as;)Ld/w;
    .registers 2

    iget-object v0, p0, Ld/as;->c:Ld/w;

    return-object v0
.end method

.method static synthetic j(Ld/as;)Ljava/lang/Integer;
    .registers 2

    iget-object v0, p0, Ld/as;->i:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic k(Ld/as;)LW/a;
    .registers 2

    iget-object v0, p0, Ld/as;->k:LW/a;

    return-object v0
.end method

.method static synthetic l(Ld/as;)Ld/X;
    .registers 2

    iget-object v0, p0, Ld/as;->h:Ld/X;

    return-object v0
.end method


# virtual methods
.method a(Ld/W;Ld/K;)V
    .registers 3

    iput-object p1, p0, Ld/as;->d:Ld/W;

    iput-object p2, p0, Ld/as;->g:Ld/K;

    return-void
.end method

.method public run()V
    .registers 10

    const/4 v2, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    iget-object v0, p0, Ld/as;->b:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-virtual {p0}, Ld/as;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :try_start_1b
    invoke-static {}, Landroid/os/Looper;->prepare()V

    new-instance v0, Ld/au;

    invoke-direct {v0, p0}, Ld/au;-><init>(Ld/as;)V
    :try_end_23
    .catchall {:try_start_1b .. :try_end_23} :catchall_9c

    :try_start_23
    iget-object v1, p0, Ld/as;->c:Ld/w;

    invoke-interface {v1}, Ld/w;->h()Ld/w;

    move-result-object v1

    iput-object v1, p0, Ld/as;->c:Ld/w;

    iget-object v1, p0, Ld/as;->d:Ld/W;

    if-eqz v1, :cond_69

    new-instance v1, Ld/V;

    iget-object v2, p0, Ld/as;->j:Lm/c;

    invoke-direct {v1, v0, v2}, Ld/V;-><init>(Landroid/os/Handler;Lm/c;)V

    iput-object v1, p0, Ld/as;->e:Ld/V;

    iget-object v0, p0, Ld/as;->e:Ld/V;

    iget-object v1, p0, Ld/as;->b:Landroid/content/Context;

    iget-object v2, p0, Ld/as;->d:Ld/W;

    iget-object v3, p0, Ld/as;->o:Ld/C;

    invoke-virtual {v0, v1, v2, v3}, Ld/V;->a(Landroid/content/Context;Ld/W;Ld/C;)Z
    :try_end_43
    .catchall {:try_start_23 .. :try_end_43} :catchall_9c
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_43} :catch_89

    move-result v1

    if-eqz v1, :cond_66

    move-object v0, v6

    :goto_47
    if-nez v1, :cond_52

    :try_start_49
    iget-object v2, p0, Ld/as;->a:Ld/C;

    if-eqz v2, :cond_52

    iget-object v2, p0, Ld/as;->a:Ld/C;

    invoke-interface {v2, v0}, Ld/C;->a(Ljava/lang/String;)V

    :cond_52
    iget-object v0, p0, Ld/as;->n:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    if-eqz v1, :cond_5c

    invoke-static {}, Landroid/os/Looper;->loop()V
    :try_end_5c
    .catchall {:try_start_49 .. :try_end_5c} :catchall_9c

    :cond_5c
    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->release()V

    iput-object v6, p0, Ld/as;->b:Landroid/content/Context;

    iput-object v6, p0, Ld/as;->c:Ld/w;

    iput-object v6, p0, Ld/as;->h:Ld/X;

    return-void

    :cond_66
    :try_start_66
    const-string v0, "PreScanner: Nothing to scan."
    :try_end_68
    .catchall {:try_start_66 .. :try_end_68} :catchall_9c
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_68} :catch_a7

    goto :goto_47

    :cond_69
    :try_start_69
    new-instance v1, Ld/X;

    iget-object v2, p0, Ld/as;->j:Lm/c;

    invoke-direct {v1, v0, v2}, Ld/X;-><init>(Landroid/os/Handler;Lm/c;)V

    iput-object v1, p0, Ld/as;->h:Ld/X;

    iget-object v0, p0, Ld/as;->h:Ld/X;

    iget-object v1, p0, Ld/as;->b:Landroid/content/Context;

    iget-object v2, p0, Ld/as;->c:Ld/w;

    iget-object v3, p0, Ld/as;->i:Ljava/lang/Integer;

    iget-object v4, p0, Ld/as;->k:LW/a;

    iget-object v5, p0, Ld/as;->a:Ld/C;

    invoke-virtual/range {v0 .. v5}, Ld/X;->a(Landroid/content/Context;Ld/w;Ljava/lang/Integer;LW/a;Ld/C;)Z
    :try_end_81
    .catchall {:try_start_69 .. :try_end_81} :catchall_9c
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_81} :catch_89

    move-result v1

    if-eqz v1, :cond_86

    move-object v0, v6

    goto :goto_47

    :cond_86
    :try_start_86
    const-string v0, "RealCollector: Nothing to scan."
    :try_end_88
    .catchall {:try_start_86 .. :try_end_88} :catchall_9c
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_88} :catch_a7

    goto :goto_47

    :catch_89
    move-exception v0

    move v1, v7

    :goto_8b
    :try_start_8b
    const-string v2, "Failed normalize configuration: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_9a
    .catchall {:try_start_8b .. :try_end_9a} :catchall_9c

    move-result-object v0

    goto :goto_47

    :catchall_9c
    move-exception v0

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->release()V

    iput-object v6, p0, Ld/as;->b:Landroid/content/Context;

    iput-object v6, p0, Ld/as;->c:Ld/w;

    iput-object v6, p0, Ld/as;->h:Ld/X;

    throw v0

    :catch_a7
    move-exception v0

    goto :goto_8b
.end method
