.class public Lbx/a;
.super LZ/a;


# static fields
.field private static e:Lbx/a;


# instance fields
.field private b:Z

.field private c:J

.field private d:Z


# direct methods
.method private constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    invoke-direct {p0}, LZ/a;-><init>()V

    iput-boolean v2, p0, Lbx/a;->b:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lbx/a;->c:J

    const-string v0, "RequestNewInstallId"

    invoke-static {v0, v2}, LP/l;->b(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lbx/a;->d:Z

    iget-boolean v0, p0, Lbx/a;->d:Z

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Lbx/a;->b()V

    :cond_19
    return-void
.end method

.method static synthetic a(Lbx/a;J)J
    .registers 3

    iput-wide p1, p0, Lbx/a;->c:J

    return-wide p1
.end method

.method public static declared-synchronized a()Lbx/a;
    .registers 2

    const-class v1, Lbx/a;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lbx/a;->e:Lbx/a;

    if-nez v0, :cond_e

    new-instance v0, Lbx/a;

    invoke-direct {v0}, Lbx/a;-><init>()V

    sput-object v0, Lbx/a;->e:Lbx/a;

    :cond_e
    sget-object v0, Lbx/a;->e:Lbx/a;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lbx/a;)V
    .registers 1

    invoke-direct {p0}, Lbx/a;->e()V

    return-void
.end method

.method static synthetic a(Lbx/a;Z)Z
    .registers 2

    iput-boolean p1, p0, Lbx/a;->d:Z

    return p1
.end method

.method static synthetic b(Lbx/a;)J
    .registers 3

    iget-wide v0, p0, Lbx/a;->c:J

    return-wide v0
.end method

.method static synthetic b(Lbx/a;Z)Z
    .registers 2

    iput-boolean p1, p0, Lbx/a;->b:Z

    return p1
.end method

.method private declared-synchronized d()V
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-static {}, LP/b;->a()LP/b;

    move-result-object v0

    const-string v1, "InstallId"

    invoke-virtual {v0, v1}, LP/b;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_1e

    move-result-object v0

    if-eqz v0, :cond_19

    :try_start_d
    invoke-static {v0}, LP/k;->a(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lbx/a;->c:J

    invoke-direct {p0}, Lbx/a;->e()V
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_1e
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_16} :catch_18

    :goto_16
    monitor-exit p0

    return-void

    :catch_18
    move-exception v0

    :cond_19
    const-wide/16 v0, 0x0

    :try_start_1b
    iput-wide v0, p0, Lbx/a;->c:J
    :try_end_1d
    .catchall {:try_start_1b .. :try_end_1d} :catchall_1e

    goto :goto_16

    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private e()V
    .registers 4

    const-string v0, "InstallId"

    iget-wide v1, p0, Lbx/a;->c:J

    invoke-static {v0, v1, v2}, LP/l;->a(Ljava/lang/String;J)V

    const-string v0, "RequestNewInstallId"

    iget-boolean v1, p0, Lbx/a;->d:Z

    invoke-static {v0, v1}, LP/l;->a(Ljava/lang/String;Z)V

    invoke-static {}, LP/b;->a()LP/b;

    move-result-object v0

    invoke-virtual {v0}, LP/b;->h()LU/m;

    move-result-object v0

    invoke-interface {v0}, LU/m;->a()V

    return-void
.end method


# virtual methods
.method public declared-synchronized a(LZ/e;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/lang/Long;

    iget-wide v1, p0, Lbx/a;->c:J

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    invoke-interface {p1, p0, v0}, LZ/e;->a(LZ/d;Ljava/lang/Object;)V

    invoke-super {p0, p1}, LZ/a;->a(LZ/e;)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    monitor-exit p0

    return-void

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lbx/a;->b:Z

    if-nez v0, :cond_2c

    invoke-static {}, Lbv/g;->e()Lbv/g;

    move-result-object v0

    if-eqz v0, :cond_2c

    const/4 v1, 0x1

    iput-boolean v1, p0, Lbx/a;->b:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lbx/a;->d:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lbx/a;->c:J

    invoke-direct {p0}, Lbx/a;->e()V

    new-instance v1, Lbw/j;

    const-string v2, "g:c"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lbw/j;-><init>(Ljava/lang/String;I)V

    new-instance v2, Lbx/b;

    invoke-direct {v2, p0}, Lbx/b;-><init>(Lbx/a;)V

    invoke-virtual {v1, v2}, Lbw/m;->a(Lbw/n;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lbv/g;->a(Lbw/m;Z)V
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_2e

    :cond_2c
    monitor-exit p0

    return-void

    :catchall_2e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()J
    .registers 6

    const-wide/16 v3, 0x0

    monitor-enter p0

    :try_start_3
    iget-boolean v0, p0, Lbx/a;->d:Z

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lbx/a;->b()V

    iget-wide v0, p0, Lbx/a;->c:J
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_33

    :goto_c
    monitor-exit p0

    return-wide v0

    :cond_e
    :try_start_e
    iget-wide v0, p0, Lbx/a;->c:J

    cmp-long v0, v0, v3

    if-nez v0, :cond_1e

    const-string v0, "InstallId"

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, LP/l;->b(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lbx/a;->c:J

    :cond_1e
    iget-wide v0, p0, Lbx/a;->c:J

    cmp-long v0, v0, v3

    if-nez v0, :cond_27

    invoke-direct {p0}, Lbx/a;->d()V

    :cond_27
    iget-wide v0, p0, Lbx/a;->c:J

    cmp-long v0, v0, v3

    if-nez v0, :cond_30

    invoke-virtual {p0}, Lbx/a;->b()V

    :cond_30
    iget-wide v0, p0, Lbx/a;->c:J
    :try_end_32
    .catchall {:try_start_e .. :try_end_32} :catchall_33

    goto :goto_c

    :catchall_33
    move-exception v0

    monitor-exit p0

    throw v0
.end method
