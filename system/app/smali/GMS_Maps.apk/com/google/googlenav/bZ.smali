.class Lcom/google/googlenav/bz;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lcom/google/googlenav/by;

.field private b:Z

.field private c:Ljava/lang/Thread;

.field private d:I

.field private e:I

.field private final f:Lax/r;


# direct methods
.method constructor <init>(Lax/r;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 380
    iput-object p1, p0, Lcom/google/googlenav/bz;->f:Lax/r;

    .line 381
    iput-boolean v1, p0, Lcom/google/googlenav/bz;->b:Z

    .line 382
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/bz;->c:Ljava/lang/Thread;

    .line 383
    iput v1, p0, Lcom/google/googlenav/bz;->d:I

    .line 384
    iput v1, p0, Lcom/google/googlenav/bz;->e:I

    .line 385
    new-instance v0, Lcom/google/googlenav/by;

    invoke-direct {v0}, Lcom/google/googlenav/by;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/bz;->a:Lcom/google/googlenav/by;

    .line 386
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/bz;)I
    .registers 2
    .parameter

    .prologue
    .line 343
    invoke-direct {p0}, Lcom/google/googlenav/bz;->b()I

    move-result v0

    return v0
.end method

.method private declared-synchronized a()Lcom/google/googlenav/by;
    .registers 2

    .prologue
    .line 389
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/googlenav/bz;->a:Lcom/google/googlenav/by;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(I)V
    .registers 3
    .parameter

    .prologue
    .line 470
    :goto_0
    :try_start_0
    monitor-enter p0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_1} :catch_10

    .line 471
    :try_start_1
    iget v0, p0, Lcom/google/googlenav/bz;->e:I

    if-lt v0, p1, :cond_7

    .line 472
    monitor-exit p0

    .line 484
    :cond_6
    :goto_6
    return-void

    .line 474
    :cond_7
    iget-object v0, p0, Lcom/google/googlenav/bz;->c:Ljava/lang/Thread;

    .line 475
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_12

    .line 476
    if-eqz v0, :cond_6

    .line 479
    :try_start_c
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_f} :catch_10

    goto :goto_0

    .line 481
    :catch_10
    move-exception v0

    goto :goto_6

    .line 475
    :catchall_12
    move-exception v0

    :try_start_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    :try_start_14
    throw v0
    :try_end_15
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_15} :catch_10
.end method

.method private declared-synchronized a(ILcom/google/googlenav/by;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 416
    monitor-enter p0

    :try_start_1
    iput-object p2, p0, Lcom/google/googlenav/bz;->a:Lcom/google/googlenav/by;

    .line 417
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/bz;->c:Ljava/lang/Thread;

    .line 418
    iget v0, p0, Lcom/google/googlenav/bz;->e:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/bz;->e:I

    .line 419
    iget-boolean v0, p0, Lcom/google/googlenav/bz;->b:Z

    if-eqz v0, :cond_15

    .line 420
    invoke-direct {p0}, Lcom/google/googlenav/bz;->c()V
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    .line 422
    :cond_15
    monitor-exit p0

    return-void

    .line 416
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/google/googlenav/bz;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 343
    invoke-direct {p0, p1}, Lcom/google/googlenav/bz;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/bz;ILcom/google/googlenav/by;)V
    .registers 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 343
    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/bz;->a(ILcom/google/googlenav/by;)V

    return-void
.end method

.method private declared-synchronized b()I
    .registers 2

    .prologue
    .line 397
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/googlenav/bz;->b:Z

    if-nez v0, :cond_e

    .line 398
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/bz;->b:Z

    .line 399
    iget v0, p0, Lcom/google/googlenav/bz;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlenav/bz;->d:I

    .line 401
    :cond_e
    iget-object v0, p0, Lcom/google/googlenav/bz;->c:Ljava/lang/Thread;

    if-nez v0, :cond_15

    .line 402
    invoke-direct {p0}, Lcom/google/googlenav/bz;->c()V

    .line 404
    :cond_15
    iget v0, p0, Lcom/google/googlenav/bz;->d:I
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    monitor-exit p0

    return v0

    .line 397
    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic b(Lcom/google/googlenav/bz;)Lcom/google/googlenav/by;
    .registers 2
    .parameter

    .prologue
    .line 343
    invoke-direct {p0}, Lcom/google/googlenav/bz;->a()Lcom/google/googlenav/by;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/google/googlenav/bz;)Lax/r;
    .registers 2
    .parameter

    .prologue
    .line 343
    iget-object v0, p0, Lcom/google/googlenav/bz;->f:Lax/r;

    return-object v0
.end method

.method private declared-synchronized c()V
    .registers 3

    .prologue
    .line 428
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/google/googlenav/bz;->b:Z

    .line 430
    iget v0, p0, Lcom/google/googlenav/bz;->d:I

    .line 433
    new-instance v1, Lcom/google/googlenav/bA;

    invoke-direct {v1, p0, v0}, Lcom/google/googlenav/bA;-><init>(Lcom/google/googlenav/bz;I)V

    iput-object v1, p0, Lcom/google/googlenav/bz;->c:Ljava/lang/Thread;

    .line 459
    iget-object v0, p0, Lcom/google/googlenav/bz;->c:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_12
    .catchall {:try_start_2 .. :try_end_12} :catchall_14

    .line 460
    monitor-exit p0

    return-void

    .line 428
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method
