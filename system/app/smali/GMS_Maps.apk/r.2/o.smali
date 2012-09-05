.class public Lr/o;
.super Ljava/lang/Object;

# interfaces
.implements Lr/b;
.implements Lx/af;


# instance fields
.field private b:Lr/b;

.field private c:Lr/c;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/googlenav/z;->c:Lcom/google/googlenav/z;

    new-instance v1, Lr/p;

    invoke-direct {v1, p0}, Lr/p;-><init>(Lr/o;)V

    invoke-static {v0, v1}, Lcom/google/googlenav/u;->a(Lcom/google/googlenav/z;Lcom/google/googlenav/x;)V

    return-void
.end method

.method private a()V
    .registers 3

    invoke-static {}, Lx/ag;->c()Lx/ag;

    move-result-object v0

    if-eqz v0, :cond_f

    const-string v1, "/building.list"

    invoke-virtual {v0, v1, p0}, Lx/ag;->a(Ljava/lang/String;Lx/af;)Lx/ad;

    move-result-object v0

    invoke-virtual {p0, v0}, Lr/o;->a(Lx/ad;)V

    :cond_f
    return-void
.end method

.method static synthetic a(Lr/o;)V
    .registers 1

    invoke-direct {p0}, Lr/o;->a()V

    return-void
.end method

.method private static b(Lx/ad;)Lr/b;
    .registers 5

    const/4 v1, 0x0

    invoke-virtual {p0}, Lx/ad;->e()[B

    move-result-object v0

    if-eqz v0, :cond_28

    array-length v2, v0

    if-lez v2, :cond_28

    :try_start_a
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v0, Ljava/io/InputStreamReader;

    const-string v3, "UTF-8"

    invoke-direct {v0, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-static {v0}, Lr/d;->a(Ljava/io/Reader;)Lr/d;
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_19} :catch_22

    move-result-object v0

    :goto_1a
    if-nez v0, :cond_21

    new-instance v0, Lr/q;

    invoke-direct {v0}, Lr/q;-><init>()V

    :cond_21
    return-object v0

    :catch_22
    move-exception v0

    const-string v2, "ResourceBasedBuildingBoundProvider"

    invoke-static {v2, v0}, Laf/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_28
    move-object v0, v1

    goto :goto_1a
.end method


# virtual methods
.method public declared-synchronized a(Lt/af;)Ljava/util/Collection;
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lr/o;->b:Lr/b;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lr/o;->b:Lr/b;

    invoke-interface {v0, p1}, Lr/b;->a(Lt/af;)Ljava/util/Collection;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_10

    move-result-object v0

    :goto_b
    monitor-exit p0

    return-object v0

    :cond_d
    :try_start_d
    sget-object v0, Lr/o;->a:Ljava/util/Collection;
    :try_end_f
    .catchall {:try_start_d .. :try_end_f} :catchall_10

    goto :goto_b

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lr/c;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lr/o;->c:Lr/c;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lx/ad;)V
    .registers 3

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    monitor-enter p1

    :try_start_4
    monitor-enter p0
    :try_end_5
    .catchall {:try_start_4 .. :try_end_5} :catchall_c

    :try_start_5
    iget-object v0, p0, Lr/o;->b:Lr/b;

    if-eqz v0, :cond_f

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_29

    :try_start_a
    monitor-exit p1

    goto :goto_2

    :catchall_c
    move-exception v0

    monitor-exit p1
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_c

    throw v0

    :cond_f
    :try_start_f
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_29

    :try_start_10
    invoke-virtual {p1}, Lx/ad;->b()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-static {p1}, Lr/o;->b(Lx/ad;)Lr/b;

    move-result-object v0

    monitor-enter p0
    :try_end_1b
    .catchall {:try_start_10 .. :try_end_1b} :catchall_c

    :try_start_1b
    iput-object v0, p0, Lr/o;->b:Lr/b;

    iget-object v0, p0, Lr/o;->c:Lr/c;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lr/o;->c:Lr/c;

    invoke-interface {v0}, Lr/c;->a()V

    :cond_26
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_1b .. :try_end_27} :catchall_2c

    :cond_27
    :try_start_27
    monitor-exit p1
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_c

    goto :goto_2

    :catchall_29
    move-exception v0

    :try_start_2a
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    :try_start_2b
    throw v0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_c

    :catchall_2c
    move-exception v0

    :try_start_2d
    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    :try_start_2e
    throw v0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_c
.end method

.method public declared-synchronized a(Lt/m;)Z
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lr/o;->b:Lr/b;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lr/o;->b:Lr/b;

    invoke-interface {v0, p1}, Lr/b;->a(Lt/m;)Z
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_f

    move-result v0

    :goto_b
    monitor-exit p0

    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_b

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method
