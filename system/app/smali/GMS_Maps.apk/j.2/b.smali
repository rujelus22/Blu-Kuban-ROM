.class Lj/b;
.super Ljava/lang/Object;


# instance fields
.field final a:J

.field final b:Ljava/util/concurrent/BlockingQueue;

.field private final c:Lj/e;

.field private final d:Lj/e;

.field private final e:Lj/e;

.field private final f:Ljava/lang/Thread;

.field private final g:Li/A;


# direct methods
.method public constructor <init>(Li/A;Li/C;JJ)V
    .registers 19

    new-instance v0, Lj/e;

    const-string v1, "bandwidth"

    invoke-virtual {p2}, Li/C;->i()Li/D;

    move-result-object v2

    move-wide v3, p3

    move-wide/from16 v5, p5

    invoke-direct/range {v0 .. v6}, Lj/e;-><init>(Ljava/lang/String;Li/D;JJ)V

    new-instance v1, Lj/e;

    const-string v2, "general-gps"

    invoke-virtual {p2}, Li/C;->j()Li/D;

    move-result-object v3

    move-wide v4, p3

    move-wide/from16 v6, p5

    invoke-direct/range {v1 .. v7}, Lj/e;-><init>(Ljava/lang/String;Li/D;JJ)V

    new-instance v2, Lj/e;

    const-string v3, "sensor-gps"

    invoke-virtual {p2}, Li/C;->k()Li/D;

    move-result-object v4

    move-wide v5, p3

    move-wide/from16 v7, p5

    invoke-direct/range {v2 .. v8}, Lj/e;-><init>(Ljava/lang/String;Li/D;JJ)V

    move-object v3, p0

    move-object v4, p1

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-wide v8, p3

    move-wide/from16 v10, p5

    invoke-direct/range {v3 .. v11}, Lj/b;-><init>(Li/A;Lj/e;Lj/e;Lj/e;JJ)V

    return-void
.end method

.method public constructor <init>(Li/A;Lj/e;Lj/e;Lj/e;JJ)V
    .registers 13

    const/4 v3, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {v0, v3}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lj/b;->b:Ljava/util/concurrent/BlockingQueue;

    iput-object p1, p0, Lj/b;->g:Li/A;

    iput-wide p5, p0, Lj/b;->a:J

    iput-object p2, p0, Lj/b;->c:Lj/e;

    iput-object p3, p0, Lj/b;->d:Lj/e;

    iput-object p4, p0, Lj/b;->e:Lj/e;

    invoke-direct {p0, p7, p8}, Lj/b;->c(J)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lj/d;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lj/d;-><init>(Lj/b;Lj/c;)V

    const-string v2, "CollectionPolicyStateWriter"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lj/b;->f:Ljava/lang/Thread;

    iget-object v0, p0, Lj/b;->f:Ljava/lang/Thread;

    invoke-virtual {v0, v3}, Ljava/lang/Thread;->setDaemon(Z)V

    iget-object v0, p0, Lj/b;->f:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic a(Lj/b;)Li/A;
    .registers 2

    iget-object v0, p0, Lj/b;->g:Li/A;

    return-object v0
.end method

.method private declared-synchronized a(JLjava/io/ByteArrayOutputStream;)V
    .registers 9

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    new-instance v1, LW/a;

    sget-object v2, Lk/a;->T:LW/d;

    invoke-direct {v1, v2}, LW/a;-><init>(LW/d;)V

    const/4 v2, 0x1

    iget-wide v3, p0, Lj/b;->a:J

    invoke-virtual {v1, v2, v3, v4}, LW/a;->b(IJ)V

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1, p2}, LW/a;->b(IJ)V

    new-instance v2, LW/a;

    sget-object v3, Lk/a;->q:LW/d;

    invoke-direct {v2, v3}, LW/a;-><init>(LW/d;)V

    iget-object v3, p0, Lj/b;->c:Lj/e;

    invoke-virtual {v3, v2}, Lj/e;->a(LW/a;)V

    const/4 v3, 0x3

    invoke-virtual {v1, v3, v2}, LW/a;->b(ILW/a;)V

    new-instance v2, LW/a;

    sget-object v3, Lk/a;->q:LW/d;

    invoke-direct {v2, v3}, LW/a;-><init>(LW/d;)V

    iget-object v3, p0, Lj/b;->d:Lj/e;

    invoke-virtual {v3, v2}, Lj/e;->a(LW/a;)V

    new-instance v3, LW/a;

    sget-object v4, Lk/a;->q:LW/d;

    invoke-direct {v3, v4}, LW/a;-><init>(LW/d;)V

    iget-object v4, p0, Lj/b;->e:Lj/e;

    invoke-virtual {v4, v3}, Lj/e;->a(LW/a;)V

    const/4 v3, 0x4

    invoke-virtual {v1, v3, v2}, LW/a;->b(ILW/a;)V

    invoke-virtual {v1}, LW/a;->e()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_51
    .catchall {:try_start_1 .. :try_end_51} :catchall_53

    monitor-exit p0

    return-void

    :catchall_53
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lj/b;JLjava/io/ByteArrayOutputStream;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lj/b;->a(JLjava/io/ByteArrayOutputStream;)V

    return-void
.end method

.method static synthetic a(Lj/b;Ljava/io/Closeable;)V
    .registers 2

    invoke-direct {p0, p1}, Lj/b;->a(Ljava/io/Closeable;)V

    return-void
.end method

.method private a(Ljava/io/Closeable;)V
    .registers 3

    if-eqz p1, :cond_5

    :try_start_2
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    :cond_5
    :goto_5
    return-void

    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method private declared-synchronized c(J)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lj/b;->c:Lj/e;

    invoke-virtual {v0, p1, p2}, Lj/e;->a(J)V

    iget-object v0, p0, Lj/b;->d:Lj/e;

    invoke-virtual {v0, p1, p2}, Lj/e;->a(J)V

    iget-object v0, p0, Lj/b;->e:Lj/e;

    invoke-virtual {v0, p1, p2}, Lj/e;->a(J)V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    monitor-exit p0

    return-void

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a()Lj/e;
    .registers 2

    iget-object v0, p0, Lj/b;->c:Lj/e;

    return-object v0
.end method

.method a(J)V
    .registers 9

    const/4 v1, 0x0

    :try_start_1
    new-instance v0, Ljava/io/FileInputStream;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lj/b;->g:Li/A;

    invoke-interface {v3}, Li/A;->e()Ljava/io/File;

    move-result-object v3

    const-string v4, "cp_state"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_23
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_13} :catch_1a

    :try_start_13
    invoke-virtual {p0, v0, p1, p2}, Lj/b;->a(Ljava/io/InputStream;J)V
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_28
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_16} :catch_2d

    invoke-direct {p0, v0}, Lj/b;->a(Ljava/io/Closeable;)V

    :goto_19
    return-void

    :catch_1a
    move-exception v0

    move-object v0, v1

    :goto_1c
    :try_start_1c
    invoke-direct {p0, p1, p2}, Lj/b;->c(J)V
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_28

    invoke-direct {p0, v0}, Lj/b;->a(Ljava/io/Closeable;)V

    goto :goto_19

    :catchall_23
    move-exception v0

    :goto_24
    invoke-direct {p0, v1}, Lj/b;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_28
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_24

    :catch_2d
    move-exception v1

    goto :goto_1c
.end method

.method a(Ljava/io/InputStream;J)V
    .registers 14

    const/4 v2, 0x1

    :try_start_1
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v1

    if-eq v1, v2, :cond_13

    invoke-direct {p0, p2, p3}, Lj/b;->c(J)V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_6b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_f} :catch_5b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_f} :catch_63

    invoke-direct {p0, p1}, Lj/b;->a(Ljava/io/Closeable;)V

    :goto_12
    return-void

    :cond_13
    :try_start_13
    new-instance v1, LW/a;

    sget-object v2, Lk/a;->T:LW/d;

    invoke-direct {v1, v2}, LW/a;-><init>(LW/d;)V

    invoke-virtual {v1, v0}, LW/a;->a(Ljava/io/InputStream;)LW/a;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, LW/a;->d(I)J

    move-result-wide v3

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, LW/a;->d(I)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-gtz v0, :cond_34

    invoke-direct {p0, p2, p3}, Lj/b;->c(J)V
    :try_end_30
    .catchall {:try_start_13 .. :try_end_30} :catchall_6b
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_30} :catch_5b
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_30} :catch_63

    invoke-direct {p0, p1}, Lj/b;->a(Ljava/io/Closeable;)V

    goto :goto_12

    :cond_34
    const/4 v0, 0x3

    :try_start_35
    invoke-virtual {v1, v0}, LW/a;->f(I)LW/a;

    move-result-object v7

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, LW/a;->f(I)LW/a;

    move-result-object v8

    const/4 v0, 0x5

    invoke-virtual {v1, v0}, LW/a;->f(I)LW/a;

    move-result-object v9

    iget-object v0, p0, Lj/b;->c:Lj/e;

    move-wide v1, p2

    invoke-virtual/range {v0 .. v7}, Lj/e;->a(JJJLW/a;)V

    iget-object v0, p0, Lj/b;->d:Lj/e;

    move-wide v1, p2

    move-object v7, v8

    invoke-virtual/range {v0 .. v7}, Lj/e;->a(JJJLW/a;)V

    iget-object v0, p0, Lj/b;->e:Lj/e;

    move-wide v1, p2

    move-object v7, v9

    invoke-virtual/range {v0 .. v7}, Lj/e;->a(JJJLW/a;)V
    :try_end_57
    .catchall {:try_start_35 .. :try_end_57} :catchall_6b
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_57} :catch_5b
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_57} :catch_63

    invoke-direct {p0, p1}, Lj/b;->a(Ljava/io/Closeable;)V

    goto :goto_12

    :catch_5b
    move-exception v0

    :try_start_5c
    invoke-direct {p0, p2, p3}, Lj/b;->c(J)V
    :try_end_5f
    .catchall {:try_start_5c .. :try_end_5f} :catchall_6b

    invoke-direct {p0, p1}, Lj/b;->a(Ljava/io/Closeable;)V

    goto :goto_12

    :catch_63
    move-exception v0

    :try_start_64
    invoke-direct {p0, p2, p3}, Lj/b;->c(J)V
    :try_end_67
    .catchall {:try_start_64 .. :try_end_67} :catchall_6b

    invoke-direct {p0, p1}, Lj/b;->a(Ljava/io/Closeable;)V

    goto :goto_12

    :catchall_6b
    move-exception v0

    invoke-direct {p0, p1}, Lj/b;->a(Ljava/io/Closeable;)V

    throw v0
.end method

.method public b()Lj/e;
    .registers 2

    iget-object v0, p0, Lj/b;->d:Lj/e;

    return-object v0
.end method

.method public declared-synchronized b(J)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lj/b;->b:Ljava/util/concurrent/BlockingQueue;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return-void

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c()Lj/e;
    .registers 2

    iget-object v0, p0, Lj/b;->e:Lj/e;

    return-object v0
.end method

.method public d()V
    .registers 2

    iget-object v0, p0, Lj/b;->f:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method

.method public e()V
    .registers 2

    :goto_0
    :try_start_0
    iget-object v0, p0, Lj/b;->f:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    goto :goto_0
.end method
