.class public Lbv/m;
.super Lbv/a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lbv/a;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method private n()V
    .registers 3

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    monitor-enter v1

    :try_start_6
    invoke-virtual {p0}, Lbv/m;->j()Z

    move-result v0

    if-eqz v0, :cond_17

    new-instance v0, Lbv/n;

    invoke-direct {v0, p0, v1}, Lbv/n;-><init>(Lbv/m;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lbv/m;->a(LZ/e;)V

    invoke-virtual {p0}, Lbv/m;->m()V

    :cond_17
    :goto_17
    invoke-virtual {p0}, Lbv/m;->k()Z

    move-result v0

    if-nez v0, :cond_29

    invoke-virtual {p0}, Lbv/m;->l()Z
    :try_end_20
    .catchall {:try_start_6 .. :try_end_20} :catchall_2b

    move-result v0

    if-nez v0, :cond_29

    :try_start_23
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_2b
    .catch Ljava/lang/InterruptedException; {:try_start_23 .. :try_end_26} :catch_27

    goto :goto_17

    :catch_27
    move-exception v0

    goto :goto_17

    :cond_29
    :try_start_29
    monitor-exit v1

    return-void

    :catchall_2b
    move-exception v0

    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_29 .. :try_end_2d} :catchall_2b

    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-direct {p0}, Lbv/m;->n()V

    invoke-super {p0, p1}, Lbv/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/io/DataInputStream;
    .registers 2

    invoke-direct {p0}, Lbv/m;->n()V

    invoke-super {p0}, Lbv/a;->b()Ljava/io/DataInputStream;

    move-result-object v0

    return-object v0
.end method

.method public c()I
    .registers 2

    invoke-direct {p0}, Lbv/m;->n()V

    invoke-super {p0}, Lbv/a;->c()I

    move-result v0

    return v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Lbv/m;->n()V

    invoke-super {p0}, Lbv/a;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()J
    .registers 3

    invoke-direct {p0}, Lbv/m;->n()V

    invoke-super {p0}, Lbv/a;->e()J

    move-result-wide v0

    return-wide v0
.end method
