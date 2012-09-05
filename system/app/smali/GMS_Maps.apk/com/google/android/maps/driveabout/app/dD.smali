.class public Lcom/google/android/maps/driveabout/app/dD;
.super Lz/d;

# interfaces
.implements Lcom/google/android/maps/driveabout/vector/bN;
.implements Lu/o;


# instance fields
.field private final a:Lcom/google/android/maps/driveabout/app/dG;

.field private b:Landroid/os/Handler;

.field private c:Landroid/os/Looper;

.field private final d:Lcom/google/android/maps/driveabout/app/dB;

.field private e:Z

.field private f:Lu/x;

.field private g:Lu/I;

.field private h:I

.field private i:Z

.field private final j:Lx/Z;

.field private k:Z

.field private l:I

.field private m:I

.field private n:I


# direct methods
.method public constructor <init>(Lx/Z;Lcom/google/android/maps/driveabout/app/dB;)V
    .registers 5

    const-string v0, "TilePrefetcher"

    invoke-direct {p0, v0}, Lz/d;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/maps/driveabout/app/dG;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/maps/driveabout/app/dG;-><init>(Lcom/google/android/maps/driveabout/app/dD;Lcom/google/android/maps/driveabout/app/dE;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/dD;->a:Lcom/google/android/maps/driveabout/app/dG;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/dD;->i:Z

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/dD;->j:Lx/Z;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/dD;->d:Lcom/google/android/maps/driveabout/app/dB;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/dD;->start()V

    :try_start_17
    monitor-enter p0
    :try_end_18
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_18} :catch_23

    :goto_18
    :try_start_18
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dD;->b:Landroid/os/Handler;

    if-nez v0, :cond_2f

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_18

    :catchall_20
    move-exception v0

    monitor-exit p0
    :try_end_22
    .catchall {:try_start_18 .. :try_end_22} :catchall_20

    :try_start_22
    throw v0
    :try_end_23
    .catch Ljava/lang/InterruptedException; {:try_start_22 .. :try_end_23} :catch_23

    :catch_23
    move-exception v0

    :goto_24
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dD;->j:Lx/Z;

    new-instance v1, Lcom/google/android/maps/driveabout/app/dE;

    invoke-direct {v1, p0}, Lcom/google/android/maps/driveabout/app/dE;-><init>(Lcom/google/android/maps/driveabout/app/dD;)V

    invoke-interface {v0, v1}, Lx/Z;->a(Lx/az;)V

    return-void

    :cond_2f
    :try_start_2f
    monitor-exit p0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_20

    goto :goto_24
.end method

.method private a(I)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/maps/driveabout/app/dD;->a(IILjava/lang/Object;)V

    return-void
.end method

.method private a(IILjava/lang/Object;)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dD;->b:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dD;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private a(ILjava/lang/Object;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/maps/driveabout/app/dD;->a(IILjava/lang/Object;)V

    return-void
.end method

.method private a(J)V
    .registers 5

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/dD;->e:Z

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/dD;->i:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/dD;->k:Z

    if-nez v0, :cond_4

    iget v0, p0, Lcom/google/android/maps/driveabout/app/dD;->m:I

    if-gtz v0, :cond_4

    const-wide/16 v0, 0x4

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1b

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/dD;->k()V

    goto :goto_4

    :cond_1b
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dD;->b:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dD;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/dD;->k:Z

    goto :goto_4
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/dD;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/dD;->e()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/dD;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/dD;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/dD;IILjava/lang/Object;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/maps/driveabout/app/dD;->a(IILjava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/dD;Lu/I;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/android/maps/driveabout/app/dD;->a(Lu/I;I)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/dD;Lu/x;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/dD;->a(Lu/x;)V

    return-void
.end method

.method private a(Lu/I;I)V
    .registers 6

    if-eqz p1, :cond_20

    if-ltz p2, :cond_20

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/dD;->i:Z

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/dD;->g:Lu/I;

    iput p2, p0, Lcom/google/android/maps/driveabout/app/dD;->h:I

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dD;->d:Lcom/google/android/maps/driveabout/app/dB;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dD;->g:Lu/I;

    iget v2, p0, Lcom/google/android/maps/driveabout/app/dD;->h:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/app/dB;->a(Lu/I;I)V

    invoke-static {}, Lz/n;->a()Lz/l;

    move-result-object v0

    invoke-virtual {v0}, Lz/l;->w()I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/maps/driveabout/app/dD;->a(J)V

    :cond_20
    return-void
.end method

.method private a(Lu/x;)V
    .registers 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/dD;->i:Z

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/dD;->f:Lu/x;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dD;->d:Lcom/google/android/maps/driveabout/app/dB;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dD;->f:Lu/x;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/dB;->a(Lu/x;)V

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/dD;->g()V

    const-wide/16 v0, 0x4e20

    invoke-direct {p0, v0, v1}, Lcom/google/android/maps/driveabout/app/dD;->a(J)V

    return-void
.end method

.method private b(I)V
    .registers 4

    iget v0, p0, Lcom/google/android/maps/driveabout/app/dD;->m:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/app/dD;->m:I

    if-nez p1, :cond_e

    iget v0, p0, Lcom/google/android/maps/driveabout/app/dD;->n:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/app/dD;->n:I

    :cond_e
    invoke-static {}, Lz/n;->a()Lz/l;

    move-result-object v0

    iget v1, p0, Lcom/google/android/maps/driveabout/app/dD;->n:I

    if-nez v1, :cond_1f

    invoke-virtual {v0}, Lz/l;->v()I

    move-result v0

    int-to-long v0, v0

    :goto_1b
    invoke-direct {p0, v0, v1}, Lcom/google/android/maps/driveabout/app/dD;->a(J)V

    return-void

    :cond_1f
    invoke-virtual {v0}, Lz/l;->w()I

    move-result v0

    int-to-long v0, v0

    goto :goto_1b
.end method

.method static synthetic b(Lcom/google/android/maps/driveabout/app/dD;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/dD;->f()V

    return-void
.end method

.method static synthetic b(Lcom/google/android/maps/driveabout/app/dD;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/dD;->b(I)V

    return-void
.end method

.method static synthetic c(Lcom/google/android/maps/driveabout/app/dD;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/dD;->h()V

    return-void
.end method

.method static synthetic d(Lcom/google/android/maps/driveabout/app/dD;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/dD;->i()V

    return-void
.end method

.method private e()V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/dD;->e:Z

    const-wide/16 v0, 0x4e20

    invoke-direct {p0, v0, v1}, Lcom/google/android/maps/driveabout/app/dD;->a(J)V

    return-void
.end method

.method static synthetic e(Lcom/google/android/maps/driveabout/app/dD;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/dD;->j()V

    return-void
.end method

.method private f()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/dD;->e:Z

    return-void
.end method

.method private g()V
    .registers 6

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dD;->d:Lcom/google/android/maps/driveabout/app/dB;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/dB;->a()Lt/af;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dD;->j:Lx/Z;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/dD;->a:Lcom/google/android/maps/driveabout/app/dG;

    sget-object v3, Lx/g;->d:Lx/g;

    const/4 v4, 0x0

    invoke-interface {v1, v0, v2, v3, v4}, Lx/Z;->a(Lt/af;Lx/aw;Lx/g;Z)V

    iget v0, p0, Lcom/google/android/maps/driveabout/app/dD;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/app/dD;->m:I

    :cond_18
    return-void
.end method

.method private h()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dD;->f:Lu/x;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dD;->g:Lu/I;

    if-eqz v0, :cond_2c

    iget v0, p0, Lcom/google/android/maps/driveabout/app/dD;->h:I

    if-ltz v0, :cond_2c

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/dD;->i:Z

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dD;->d:Lcom/google/android/maps/driveabout/app/dB;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/dB;->b()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dD;->d:Lcom/google/android/maps/driveabout/app/dB;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dD;->f:Lu/x;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/dB;->a(Lu/x;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dD;->d:Lcom/google/android/maps/driveabout/app/dB;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dD;->g:Lu/I;

    iget v2, p0, Lcom/google/android/maps/driveabout/app/dD;->h:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/app/dB;->a(Lu/I;I)V

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/dD;->g()V

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/maps/driveabout/app/dD;->a(J)V

    :cond_2c
    return-void
.end method

.method private i()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/dD;->k:Z

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/dD;->k()V

    return-void
.end method

.method private j()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/dD;->i:Z

    return-void
.end method

.method private k()V
    .registers 5

    const-wide/16 v2, 0x190

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/dD;->e:Z

    if-eqz v0, :cond_1b

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/dD;->i:Z

    if-nez v0, :cond_1b

    iget v0, p0, Lcom/google/android/maps/driveabout/app/dD;->m:I

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dD;->j:Lx/Z;

    invoke-interface {v0}, Lx/Z;->l()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1c

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/dD;->l()V

    :cond_1b
    :goto_1b
    return-void

    :cond_1c
    invoke-direct {p0, v2, v3}, Lcom/google/android/maps/driveabout/app/dD;->a(J)V

    goto :goto_1b
.end method

.method private l()V
    .registers 8

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/maps/driveabout/app/dD;->n:I

    invoke-static {}, Lz/n;->a()Lz/l;

    move-result-object v0

    invoke-virtual {v0}, Lz/l;->u()I

    move-result v2

    move v0, v1

    :goto_c
    if-ge v0, v2, :cond_19

    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/dD;->d:Lcom/google/android/maps/driveabout/app/dB;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/app/dB;->a()Lt/af;

    move-result-object v3

    if-nez v3, :cond_1a

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/dD;->i:Z

    :cond_19
    return-void

    :cond_1a
    iget-object v4, p0, Lcom/google/android/maps/driveabout/app/dD;->j:Lx/Z;

    iget-object v5, p0, Lcom/google/android/maps/driveabout/app/dD;->a:Lcom/google/android/maps/driveabout/app/dG;

    sget-object v6, Lx/g;->d:Lx/g;

    invoke-interface {v4, v3, v5, v6, v1}, Lx/Z;->a(Lt/af;Lx/aw;Lx/g;Z)V

    iget v3, p0, Lcom/google/android/maps/driveabout/app/dD;->m:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/android/maps/driveabout/app/dD;->m:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_c
.end method


# virtual methods
.method public a()V
    .registers 5

    const/16 v0, 0xa

    :try_start_2
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_5} :catch_1e

    :goto_5
    invoke-static {}, Landroid/os/Looper;->prepare()V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/dD;->c:Landroid/os/Looper;

    new-instance v0, Lcom/google/android/maps/driveabout/app/dF;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/dF;-><init>(Lcom/google/android/maps/driveabout/app/dD;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/dD;->b:Landroid/os/Handler;

    monitor-enter p0

    :try_start_16
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_16 .. :try_end_1a} :catchall_38

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void

    :catch_1e
    move-exception v0

    const-string v1, "TilePrefetcherThread"

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

    goto :goto_5

    :catchall_38
    move-exception v0

    :try_start_39
    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw v0
.end method

.method public a(ILu/g;Lu/q;)V
    .registers 5

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/dD;->a(I)V

    return-void
.end method

.method public a(Lu/j;I)V
    .registers 3

    return-void
.end method

.method public a(Lu/q;)V
    .registers 3

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/dD;->a(I)V

    return-void
.end method

.method public b()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/dD;->a(I)V

    return-void
.end method

.method public b(Lu/j;I)V
    .registers 3

    return-void
.end method

.method public b(Lu/q;)V
    .registers 5

    invoke-virtual {p1}, Lu/q;->b()I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/app/dD;->l:I

    const/4 v0, 0x5

    invoke-virtual {p1}, Lu/q;->e()I

    move-result v1

    invoke-virtual {p1}, Lu/q;->h()Lu/I;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/maps/driveabout/app/dD;->a(IILjava/lang/Object;)V

    return-void
.end method

.method public c()V
    .registers 2

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/dD;->a(I)V

    return-void
.end method

.method public c(Lu/q;)V
    .registers 5

    invoke-virtual {p1}, Lu/q;->h()Lu/I;

    move-result-object v0

    if-nez v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    iget v0, p0, Lcom/google/android/maps/driveabout/app/dD;->l:I

    invoke-virtual {p1}, Lu/q;->b()I

    move-result v1

    sub-int/2addr v0, v1

    const/16 v1, 0x7530

    if-lt v0, v1, :cond_6

    invoke-virtual {p1}, Lu/q;->b()I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/app/dD;->l:I

    const/4 v0, 0x5

    invoke-virtual {p1}, Lu/q;->e()I

    move-result v1

    invoke-virtual {p1}, Lu/q;->h()Lu/I;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/maps/driveabout/app/dD;->a(IILjava/lang/Object;)V

    goto :goto_6
.end method

.method public d()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dD;->c:Landroid/os/Looper;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dD;->c:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    :cond_9
    return-void
.end method

.method public d(Lu/q;)V
    .registers 4

    const/4 v0, 0x4

    invoke-virtual {p1}, Lu/q;->g()Lu/x;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/maps/driveabout/app/dD;->a(ILjava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/app/dD;->b(Lu/q;)V

    return-void
.end method

.method public e(Lu/q;)V
    .registers 3

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/dD;->a(I)V

    return-void
.end method

.method public f(Lu/q;)V
    .registers 2

    return-void
.end method
