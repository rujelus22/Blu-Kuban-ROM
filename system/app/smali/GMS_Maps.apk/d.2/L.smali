.class Ld/L;
.super Ld/aj;


# instance fields
.field private volatile e:Z

.field private final f:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final g:Landroid/os/PowerManager;

.field private volatile h:Ljava/lang/String;

.field private final i:[B

.field private volatile j:Z

.field private volatile k:Ljava/lang/String;

.field private l:Ljava/lang/Object;

.field private volatile m:Ld/d;


# direct methods
.method constructor <init>(Landroid/os/PowerManager;Ljava/lang/String;[BLd/C;Lm/c;Ld/aq;)V
    .registers 16

    invoke-direct {p0, p4, p5, p6}, Ld/aj;-><init>(Ld/C;Lm/c;Ld/aq;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ld/L;->e:Z

    new-instance v0, Ld/M;

    const/4 v2, 0x1

    const/4 v3, 0x1

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0x32

    invoke-direct {v7, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;

    invoke-direct {v8}, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;-><init>()V

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Ld/M;-><init>(Ld/L;IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v0, p0, Ld/L;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v0, 0x0

    iput-boolean v0, p0, Ld/L;->j:Z

    const/4 v0, 0x0

    iput-object v0, p0, Ld/L;->k:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ld/L;->l:Ljava/lang/Object;

    iput-object p1, p0, Ld/L;->g:Landroid/os/PowerManager;

    iput-object p2, p0, Ld/L;->h:Ljava/lang/String;

    iget-object v0, p0, Ld/L;->h:Ljava/lang/String;

    iget-object v1, p0, Ld/L;->h:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_5a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ld/L;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ld/L;->h:Ljava/lang/String;

    :cond_5a
    iput-object p3, p0, Ld/L;->i:[B

    return-void
.end method

.method static synthetic a(Ld/L;LW/a;)Ld/ak;
    .registers 3

    invoke-direct {p0, p1}, Ld/L;->c(LW/a;)Ld/ak;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;[B)Ld/ak;
    .registers 9

    const/4 v2, 0x0

    invoke-direct {p0}, Ld/L;->c()Ld/ak;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ld/L;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Ld/L;->h:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_24
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_29
    .catchall {:try_start_24 .. :try_end_29} :catchall_59
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_29} :catch_39

    :try_start_29
    invoke-virtual {v1, p2}, Ljava/io/FileOutputStream;->write([B)V

    new-instance v0, Ld/ak;

    const/4 v2, 0x1

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v4}, Ld/ak;-><init>(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_33
    .catchall {:try_start_29 .. :try_end_33} :catchall_63
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_33} :catch_65

    if-eqz v1, :cond_38

    :try_start_35
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_38} :catch_57

    :cond_38
    :goto_38
    return-object v0

    :catch_39
    move-exception v0

    move-object v1, v2

    :goto_3b
    :try_start_3b
    const-string v2, "Failed to save data: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ld/ak;

    const/4 v4, 0x0

    invoke-direct {v0, v4, v3, v2}, Ld/ak;-><init>(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_51
    .catchall {:try_start_3b .. :try_end_51} :catchall_63

    if-eqz v1, :cond_38

    :try_start_53
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_56} :catch_57

    goto :goto_38

    :catch_57
    move-exception v1

    goto :goto_38

    :catchall_59
    move-exception v0

    move-object v1, v2

    :goto_5b
    if-eqz v1, :cond_60

    :try_start_5d
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_60} :catch_61

    :cond_60
    :goto_60
    throw v0

    :catch_61
    move-exception v1

    goto :goto_60

    :catchall_63
    move-exception v0

    goto :goto_5b

    :catch_65
    move-exception v0

    goto :goto_3b
.end method

.method static synthetic a(Ld/L;)Z
    .registers 2

    iget-boolean v0, p0, Ld/L;->j:Z

    return v0
.end method

.method private b(Ljava/lang/String;)Ld/ak;
    .registers 7

    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v4, 0x0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_27

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v1

    :goto_12
    if-nez v1, :cond_26

    const-string v1, "Failed to create dir: %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v1, Ld/ak;

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v4, v0, v2}, Ld/ak;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    :cond_26
    return-object v0

    :cond_27
    move v1, v2

    goto :goto_12
.end method

.method static synthetic b(Ld/L;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ld/L;->h:Ljava/lang/String;

    return-object v0
.end method

.method private b()Z
    .registers 3

    iget-boolean v0, p0, Ld/L;->e:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :cond_5
    :goto_5
    return v0

    :cond_6
    invoke-direct {p0}, Ld/L;->c()Ld/ak;

    move-result-object v0

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    goto :goto_5

    :cond_e
    invoke-static {}, Ld/ai;->a()Ld/ai;

    move-result-object v0

    iget-object v1, p0, Ld/L;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ld/ai;->a(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Ld/L;->e:Z

    if-nez v0, :cond_5

    goto :goto_5
.end method

.method private b(LW/a;)Z
    .registers 8

    const/4 v5, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x6

    invoke-virtual {p1, v4}, LW/a;->h(I)Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-virtual {p1, v4}, LW/a;->f(I)LW/a;

    move-result-object v0

    invoke-virtual {v0, v5}, LW/a;->h(I)Z

    move-result v0

    if-eqz v0, :cond_2d

    move v0, v1

    :goto_15
    const-string v3, "No sequence number specified!"

    invoke-static {v0, v3}, Ld/ax;->b(ZLjava/lang/Object;)V

    invoke-virtual {p1, v4}, LW/a;->f(I)LW/a;

    move-result-object v0

    invoke-virtual {v0, v5}, LW/a;->c(I)I

    move-result v0

    :try_start_22
    iget-object v3, p0, Ld/L;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v4, Ld/N;

    invoke-direct {v4, p0, v0, p1}, Ld/N;-><init>(Ld/L;ILW/a;)V

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_2c
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_22 .. :try_end_2c} :catch_2f

    :goto_2c
    return v1

    :cond_2d
    move v0, v2

    goto :goto_15

    :catch_2f
    move-exception v1

    const-string v1, "Failed to write to file: work queue full."

    iget-object v3, p0, Ld/L;->a:Ld/C;

    const/4 v4, 0x0

    invoke-interface {v3, v0, v4, v1}, Ld/C;->a(ILjava/lang/String;Ljava/lang/String;)V

    move v1, v2

    goto :goto_2c
.end method

.method static synthetic c(Ld/L;)Landroid/os/PowerManager;
    .registers 2

    iget-object v0, p0, Ld/L;->g:Landroid/os/PowerManager;

    return-object v0
.end method

.method private c()Ld/ak;
    .registers 10

    const/4 v0, 0x0

    iget-object v2, p0, Ld/L;->l:Ljava/lang/Object;

    monitor-enter v2

    :try_start_4
    iget-boolean v1, p0, Ld/L;->j:Z

    if-eqz v1, :cond_a

    monitor-exit v2

    :goto_9
    return-object v0

    :cond_a
    iget-object v1, p0, Ld/L;->h:Ljava/lang/String;

    invoke-direct {p0, v1}, Ld/L;->b(Ljava/lang/String;)Ld/ak;

    move-result-object v1

    if-eqz v1, :cond_15

    monitor-exit v2

    move-object v0, v1

    goto :goto_9

    :cond_15
    const-string v1, "%d-%d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    const-wide v7, 0x412e848000000000L

    mul-double/2addr v5, v7

    double-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Ld/L;->h:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ld/L;->h:Ljava/lang/String;

    iget-object v1, p0, Ld/L;->h:Ljava/lang/String;

    invoke-direct {p0, v1}, Ld/L;->b(Ljava/lang/String;)Ld/ak;

    move-result-object v1

    if-eqz v1, :cond_5b

    monitor-exit v2

    move-object v0, v1

    goto :goto_9

    :cond_5b
    const/4 v1, 0x1

    iput-boolean v1, p0, Ld/L;->j:Z

    monitor-exit v2

    goto :goto_9

    :catchall_60
    move-exception v0

    monitor-exit v2
    :try_end_62
    .catchall {:try_start_4 .. :try_end_62} :catchall_60

    throw v0
.end method

.method private c(LW/a;)Ld/ak;
    .registers 7

    invoke-direct {p0}, Ld/L;->c()Ld/ak;

    monitor-enter p0

    :try_start_4
    iget-object v0, p0, Ld/L;->m:Ld/d;

    if-nez v0, :cond_33

    iget-object v0, p0, Ld/L;->i:[B

    if-nez v0, :cond_21

    new-instance v1, Ld/ak;

    const/4 v2, 0x0

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    const-string v3, "Encryption Key invalid."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Ld/ak;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    move-object v0, v1

    :goto_20
    return-object v0

    :cond_21
    new-instance v0, Ld/d;

    iget-object v1, p0, Ld/L;->h:Ljava/lang/String;

    new-instance v2, Ld/a;

    iget-object v3, p0, Ld/L;->i:[B

    invoke-direct {v2, v3}, Ld/a;-><init>([B)V

    iget-object v3, p0, Ld/L;->b:Lm/c;

    invoke-direct {v0, v1, v2, v3}, Ld/d;-><init>(Ljava/lang/String;Ld/a;Lm/c;)V

    iput-object v0, p0, Ld/L;->m:Ld/d;

    :cond_33
    monitor-exit p0
    :try_end_34
    .catchall {:try_start_4 .. :try_end_34} :catchall_3b

    iget-object v0, p0, Ld/L;->m:Ld/d;

    invoke-virtual {v0, p1}, Ld/d;->a(LW/a;)Ld/ak;

    move-result-object v0

    goto :goto_20

    :catchall_3b
    move-exception v0

    :try_start_3c
    monitor-exit p0
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    throw v0
.end method

.method static synthetic d(Ld/L;)Z
    .registers 2

    invoke-direct {p0}, Ld/L;->b()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;)Ld/ak;
    .registers 6

    const/4 v0, 0x1

    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Ld/L;->k:Ljava/lang/String;

    if-eqz v1, :cond_e

    iget-object v1, p0, Ld/L;->k:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    :cond_e
    :goto_e
    const-string v1, "sessionId in two writes should be consistent."

    invoke-static {v0, v1}, Ld/ax;->a(ZLjava/lang/Object;)V

    iget-object v0, p0, Ld/L;->k:Ljava/lang/String;

    if-eqz v0, :cond_26

    new-instance v1, Ld/ak;

    const/4 v2, 0x1

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Ld/ak;-><init>(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_21
    .catchall {:try_start_2 .. :try_end_21} :catchall_44

    move-object v0, v1

    :cond_22
    :goto_22
    monitor-exit p0

    return-object v0

    :cond_24
    const/4 v0, 0x0

    goto :goto_e

    :cond_26
    :try_start_26
    const-string v0, "sessionId"

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ld/L;->a(Ljava/lang/String;[B)Ld/ak;

    move-result-object v0

    invoke-virtual {v0}, Ld/ak;->a()Z

    move-result v1

    if-eqz v1, :cond_22

    iput-object p1, p0, Ld/L;->k:Ljava/lang/String;

    new-instance v1, Ld/ak;

    const/4 v2, 0x1

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Ld/ak;-><init>(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_42
    .catchall {:try_start_26 .. :try_end_42} :catchall_44

    move-object v0, v1

    goto :goto_22

    :catchall_44
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected a()V
    .registers 2

    iget-object v0, p0, Ld/L;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    return-void
.end method

.method a(Ld/aq;)V
    .registers 3

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    :try_start_3
    iget-object v0, p0, Ld/L;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ld/aq;->b(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_8} :catch_9

    goto :goto_2

    :catch_9
    move-exception v0

    goto :goto_2
.end method

.method declared-synchronized a(LW/a;)Z
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Ld/L;->c:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_d

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_6
    monitor-exit p0

    return v0

    :cond_8
    :try_start_8
    invoke-direct {p0, p1}, Ld/L;->b(LW/a;)Z
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_d

    move-result v0

    goto :goto_6

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected a(LW/a;LW/a;)Z
    .registers 4

    const/4 v0, 0x6

    invoke-virtual {p1, v0, p2}, LW/a;->b(ILW/a;)V

    invoke-direct {p0, p1}, Ld/L;->b(LW/a;)Z

    move-result v0

    return v0
.end method

.method protected finalize()V
    .registers 2

    :try_start_0
    iget-object v0, p0, Ld/L;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_c

    move-result v0

    if-nez v0, :cond_8

    :cond_8
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_c
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method
