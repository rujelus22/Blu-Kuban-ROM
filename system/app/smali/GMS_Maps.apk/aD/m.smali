.class public LaD/m;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lam/b;

.field private final b:Z

.field private final c:J

.field private d:Lah/f;


# direct methods
.method public constructor <init>(Lam/b;ZJ)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LaD/m;->a:Lam/b;

    iput-boolean p2, p0, LaD/m;->b:Z

    iput-wide p3, p0, LaD/m;->c:J

    return-void
.end method

.method private a(JLjava/lang/String;)Ljava/lang/String;
    .registers 8

    const/4 v3, 0x0

    const-wide/32 v0, 0x493e0

    cmp-long v0, p1, v0

    if-gez v0, :cond_1d

    const/16 v0, 0x1ed

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    :goto_e
    const-string v1, "%s - %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p3, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1d
    invoke-static {p1, p2, v3, v3}, Lcom/google/googlenav/b;->a(JZZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method


# virtual methods
.method public a()J
    .registers 3

    iget-object v0, p0, LaD/m;->a:Lam/b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lam/g;->f(Lam/b;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized a(Lah/f;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, LaD/m;->d:Lah/f;

    if-nez v0, :cond_7

    iput-object p1, p0, LaD/m;->d:Lah/f;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    :cond_7
    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, LaD/m;->a:Lam/b;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lam/g;->a(Lam/b;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, LaD/m;->a:Lam/b;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lam/g;->a(Lam/b;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 9

    const-wide/16 v6, 0x0

    const-string v0, ""

    iget-object v1, p0, LaD/m;->a:Lam/b;

    const/4 v2, 0x6

    invoke-static {v1, v2}, Lam/g;->c(Lam/b;I)Lam/b;

    move-result-object v1

    if-eqz v1, :cond_3d

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lam/g;->f(Lam/b;I)J

    move-result-wide v2

    const/4 v4, 0x4

    invoke-static {v1, v4}, Lam/g;->b(Lam/b;I)Ljava/lang/String;

    move-result-object v1

    iget-wide v4, p0, LaD/m;->c:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_3d

    cmp-long v4, v2, v6

    if-lez v4, :cond_3d

    invoke-static {v1}, Las/b;->b(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3d

    iget-wide v4, p0, LaD/m;->c:J

    sub-long v2, v4, v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    cmp-long v4, v2, v6

    if-ltz v4, :cond_3d

    const-wide/32 v4, 0x240c8400

    cmp-long v4, v2, v4

    if-gez v4, :cond_3d

    invoke-direct {p0, v2, v3, v1}, LaD/m;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_3d
    return-object v0
.end method

.method public declared-synchronized e()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, LaD/m;->d:Lah/f;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_a

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_6
    monitor-exit p0

    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_6

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    instance-of v2, p1, LaD/m;

    if-eqz v2, :cond_19

    invoke-virtual {p0}, LaD/m;->a()J

    move-result-wide v2

    check-cast p1, LaD/m;

    invoke-virtual {p1}, LaD/m;->a()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_4

    :cond_19
    move v0, v1

    goto :goto_4
.end method

.method public declared-synchronized f()Lah/f;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, LaD/m;->d:Lah/f;

    if-eqz v0, :cond_9

    iget-object v0, p0, LaD/m;->d:Lah/f;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_c

    :goto_7
    monitor-exit p0

    return-object v0

    :cond_9
    :try_start_9
    sget-object v0, LaD/i;->a:Lah/f;
    :try_end_b
    .catchall {:try_start_9 .. :try_end_b} :catchall_c

    goto :goto_7

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public g()Z
    .registers 2

    iget-boolean v0, p0, LaD/m;->b:Z

    return v0
.end method

.method public hashCode()I
    .registers 6

    invoke-virtual {p0}, LaD/m;->a()J

    move-result-wide v0

    invoke-virtual {p0}, LaD/m;->a()J

    move-result-wide v2

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method
