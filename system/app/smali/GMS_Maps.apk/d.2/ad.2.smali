.class Ld/ad;
.super Ld/aj;


# instance fields
.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:[B

.field private final h:Landroid/os/PowerManager;

.field private final i:Landroid/content/Context;

.field private volatile j:Ld/O;

.field private volatile k:Z

.field private final l:Ljava/lang/String;

.field private volatile m:Ld/L;

.field private n:Ljava/lang/Object;

.field private final o:Ld/ag;

.field private p:Ld/ah;

.field private volatile q:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Ld/ag;Ljava/lang/String;Ljava/lang/String;[BLd/C;Ljava/lang/String;Lm/c;)V
    .registers 11

    const/4 v1, 0x0

    new-instance v0, Ld/aq;

    invoke-direct {v0}, Ld/aq;-><init>()V

    invoke-direct {p0, p6, p8, v0}, Ld/aj;-><init>(Ld/C;Lm/c;Ld/aq;)V

    iput-boolean v1, p0, Ld/ad;->k:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ld/ad;->n:Ljava/lang/Object;

    iput-boolean v1, p0, Ld/ad;->q:Z

    const-string v0, "Session id should not be null. Please make sure you called the correct constructor."

    invoke-static {p7, v0}, Ld/ax;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Ld/ad;->i:Landroid/content/Context;

    iput-object p3, p0, Ld/ad;->f:Ljava/lang/String;

    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Ld/ad;->h:Landroid/os/PowerManager;

    iput-object p4, p0, Ld/ad;->e:Ljava/lang/String;

    iput-object p5, p0, Ld/ad;->g:[B

    iput-object p7, p0, Ld/ad;->l:Ljava/lang/String;

    iput-object p2, p0, Ld/ad;->o:Ld/ag;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ld/ag;Ljava/lang/String;Ljava/lang/String;[BLd/C;Lm/c;)V
    .registers 17

    invoke-static {}, Ld/ad;->b()Ljava/lang/String;

    move-result-object v7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Ld/ad;-><init>(Landroid/content/Context;Ld/ag;Ljava/lang/String;Ljava/lang/String;[BLd/C;Ljava/lang/String;Lm/c;)V

    return-void
.end method

.method private a(LW/a;LW/a;Ljava/lang/String;)LW/a;
    .registers 5

    if-eqz p3, :cond_6

    const/4 v0, 0x2

    invoke-virtual {p2, v0, p3}, LW/a;->b(ILjava/lang/String;)V

    :cond_6
    const/4 v0, 0x6

    invoke-virtual {p1, v0, p2}, LW/a;->b(ILW/a;)V

    return-object p1
.end method

.method static synthetic a(Ld/ad;LW/a;LW/a;Ljava/lang/String;)LW/a;
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Ld/ad;->a(LW/a;LW/a;Ljava/lang/String;)LW/a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Ld/ad;)Landroid/os/PowerManager;
    .registers 2

    iget-object v0, p0, Ld/ad;->h:Landroid/os/PowerManager;

    return-object v0
.end method

.method private a(LW/a;Ld/ak;ILjava/lang/String;)V
    .registers 7

    iget-object v0, p0, Ld/ad;->a:Ld/C;

    if-eqz v0, :cond_d

    iget-object v0, p0, Ld/ad;->a:Ld/C;

    invoke-virtual {p2}, Ld/ak;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p4, p3, v1}, Ld/C;->a(Ljava/lang/String;ILjava/lang/String;)V

    :cond_d
    invoke-direct {p0, p1, p4}, Ld/ad;->a(LW/a;Ljava/lang/String;)V

    return-void
.end method

.method private a(LW/a;Ljava/lang/String;)V
    .registers 11

    iget-object v0, p0, Ld/ad;->e:Ljava/lang/String;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    iget-object v7, p0, Ld/ad;->n:Ljava/lang/Object;

    monitor-enter v7

    :try_start_f
    iget-object v0, p0, Ld/ad;->m:Ld/L;

    if-nez v0, :cond_25

    new-instance v0, Ld/L;

    iget-object v1, p0, Ld/ad;->h:Landroid/os/PowerManager;

    iget-object v2, p0, Ld/ad;->e:Ljava/lang/String;

    iget-object v3, p0, Ld/ad;->g:[B

    iget-object v4, p0, Ld/ad;->a:Ld/C;

    iget-object v5, p0, Ld/ad;->b:Lm/c;

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Ld/L;-><init>(Landroid/os/PowerManager;Ljava/lang/String;[BLd/C;Lm/c;Ld/aq;)V

    iput-object v0, p0, Ld/ad;->m:Ld/L;

    :cond_25
    monitor-exit v7
    :try_end_26
    .catchall {:try_start_f .. :try_end_26} :catchall_3a

    if-eqz p2, :cond_34

    iget-object v0, p0, Ld/ad;->m:Ld/L;

    invoke-virtual {v0, p2}, Ld/L;->a(Ljava/lang/String;)Ld/ak;

    move-result-object v0

    invoke-virtual {v0}, Ld/ak;->a()Z

    move-result v0

    if-nez v0, :cond_34

    :cond_34
    iget-object v0, p0, Ld/ad;->m:Ld/L;

    invoke-virtual {v0, p1}, Ld/L;->a(LW/a;)Z

    goto :goto_4

    :catchall_3a
    move-exception v0

    :try_start_3b
    monitor-exit v7
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    throw v0
.end method

.method static synthetic a(Ld/ad;LW/a;Ld/ak;ILjava/lang/String;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Ld/ad;->a(LW/a;Ld/ak;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic b(Ld/ad;)Ld/ah;
    .registers 2

    iget-object v0, p0, Ld/ad;->p:Ld/ah;

    return-object v0
.end method

.method static b()Ljava/lang/String;
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Ld/ad;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ld/ad;->l:Ljava/lang/String;

    return-object v0
.end method

.method private c(LW/a;LW/a;)V
    .registers 8

    iget-object v0, p0, Ld/ad;->l:Ljava/lang/String;

    invoke-direct {p0, p1, p2, v0}, Ld/ad;->a(LW/a;LW/a;Ljava/lang/String;)LW/a;

    move-result-object v1

    new-instance v2, Ld/ak;

    const/4 v3, 0x0

    const/4 v0, 0x0

    check-cast v0, LW/a;

    const-string v4, "To many data in upload queue."

    invoke-direct {v2, v3, v0, v4}, Ld/ak;-><init>(ZLW/a;Ljava/lang/String;)V

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, LW/a;->f(I)LW/a;

    move-result-object v0

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, LW/a;->c(I)I

    move-result v0

    iget-object v3, p0, Ld/ad;->l:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v0, v3}, Ld/ad;->a(LW/a;Ld/ak;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic d(Ld/ad;)Z
    .registers 2

    iget-boolean v0, p0, Ld/ad;->k:Z

    return v0
.end method

.method static synthetic e(Ld/ad;)Ld/O;
    .registers 2

    iget-object v0, p0, Ld/ad;->j:Ld/O;

    return-object v0
.end method

.method private e()V
    .registers 4

    new-instance v0, Ld/O;

    iget-object v1, p0, Ld/ad;->i:Landroid/content/Context;

    iget-object v2, p0, Ld/ad;->b:Lm/c;

    invoke-direct {v0, v1, v2}, Ld/O;-><init>(Landroid/content/Context;Lm/c;)V

    iput-object v0, p0, Ld/ad;->j:Ld/O;

    new-instance v0, Ld/af;

    const-string v1, "RemoteScanResultWriter.workerThread"

    invoke-direct {v0, p0, v1}, Ld/af;-><init>(Ld/ad;Ljava/lang/String;)V

    invoke-virtual {v0}, Ld/af;->start()V

    invoke-virtual {v0}, Ld/af;->getLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Ld/ah;

    invoke-direct {v1, p0, v0}, Ld/ah;-><init>(Ld/ad;Landroid/os/Looper;)V

    iput-object v1, p0, Ld/ad;->p:Ld/ah;

    return-void
.end method

.method static synthetic f(Ld/ad;)Ld/L;
    .registers 2

    iget-object v0, p0, Ld/ad;->m:Ld/L;

    return-object v0
.end method


# virtual methods
.method protected a()V
    .registers 2

    iget-object v0, p0, Ld/ad;->p:Ld/ah;

    if-eqz v0, :cond_9

    iget-object v0, p0, Ld/ad;->p:Ld/ah;

    invoke-virtual {v0}, Ld/ah;->a()V

    :cond_9
    return-void
.end method

.method protected declared-synchronized a(LW/a;LW/a;)Z
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Ld/ad;->q:Z

    if-nez v0, :cond_b

    const/4 v0, 0x1

    iput-boolean v0, p0, Ld/ad;->q:Z

    invoke-direct {p0}, Ld/ad;->e()V

    :cond_b
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, LW/a;->h(I)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Ld/ad;->f:Ljava/lang/String;

    if-eqz v0, :cond_21

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, LW/a;->f(I)LW/a;

    move-result-object v0

    const/4 v1, 0x3

    iget-object v2, p0, Ld/ad;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, LW/a;->b(ILjava/lang/String;)V

    :cond_21
    iget-object v0, p0, Ld/ad;->o:Ld/ag;

    sget-object v1, Ld/ag;->a:Ld/ag;

    if-ne v0, v1, :cond_35

    iget-object v0, p0, Ld/ad;->p:Ld/ah;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Ld/ah;->a(LW/a;LW/a;Z)Z

    move-result v0

    if-nez v0, :cond_33

    invoke-direct {p0, p1, p2}, Ld/ad;->c(LW/a;LW/a;)V
    :try_end_33
    .catchall {:try_start_1 .. :try_end_33} :catchall_3d

    :cond_33
    :goto_33
    monitor-exit p0

    return v0

    :cond_35
    :try_start_35
    iget-object v0, p0, Ld/ad;->p:Ld/ah;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Ld/ah;->a(LW/a;LW/a;Z)Z
    :try_end_3b
    .catchall {:try_start_35 .. :try_end_3b} :catchall_3d

    move-result v0

    goto :goto_33

    :catchall_3d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Ld/ad;->k:Z

    return-void
.end method
