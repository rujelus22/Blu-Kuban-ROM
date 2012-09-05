.class public Lat/n;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lat/h;

.field private b:Ljava/util/Vector;

.field private c:Z

.field private final d:Lam/b;


# direct methods
.method private constructor <init>(Lat/h;)V
    .registers 4

    iput-object p1, p0, Lat/n;->a:Lat/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lat/n;->b:Ljava/util/Vector;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lat/n;->c:Z

    new-instance v0, Lam/b;

    sget-object v1, LbD/V;->a:Lam/e;

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    iput-object v0, p0, Lat/n;->d:Lam/b;

    return-void
.end method

.method synthetic constructor <init>(Lat/h;Lat/i;)V
    .registers 3

    invoke-direct {p0, p1}, Lat/n;-><init>(Lat/h;)V

    return-void
.end method

.method static synthetic a(Lat/n;)Lam/b;
    .registers 2

    iget-object v0, p0, Lat/n;->d:Lam/b;

    return-object v0
.end method

.method static synthetic a(Lat/n;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lat/n;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lat/n;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lat/n;->a(Z)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lat/n;->d:Lam/b;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Lam/b;->b(ILjava/lang/String;)V

    return-void
.end method

.method private a(Z)V
    .registers 4

    iget-object v0, p0, Lat/n;->d:Lam/b;

    const/16 v1, 0x24

    invoke-virtual {v0, v1, p1}, Lam/b;->b(IZ)V

    return-void
.end method

.method private a()Z
    .registers 2

    iget-boolean v0, p0, Lat/n;->c:Z

    return v0
.end method

.method static synthetic b(Lat/n;Z)Lat/o;
    .registers 3

    invoke-direct {p0, p1}, Lat/n;->b(Z)Lat/o;

    move-result-object v0

    return-object v0
.end method

.method private b(Z)Lat/o;
    .registers 4

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Lat/n;->b:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-nez v1, :cond_c

    monitor-exit p0

    :goto_b
    return-object v0

    :cond_c
    if-eqz p1, :cond_17

    iget-boolean v1, p0, Lat/n;->c:Z

    if-nez v1, :cond_17

    monitor-exit p0

    goto :goto_b

    :catchall_14
    move-exception v0

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_2 .. :try_end_16} :catchall_14

    throw v0

    :cond_17
    :try_start_17
    new-instance v0, Lat/o;

    iget-object v1, p0, Lat/n;->b:Ljava/util/Vector;

    invoke-direct {v0, p0, v1}, Lat/o;-><init>(Lat/n;Ljava/util/Vector;)V

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lat/n;->b:Ljava/util/Vector;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lat/n;->c:Z

    monitor-exit p0
    :try_end_29
    .catchall {:try_start_17 .. :try_end_29} :catchall_14

    goto :goto_b
.end method

.method static synthetic b(Lat/n;)Z
    .registers 2

    invoke-direct {p0}, Lat/n;->a()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Lat/g;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-interface {p1}, Lat/g;->l_()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    iput-boolean v0, p0, Lat/n;->c:Z

    :cond_a
    iget-object v0, p0, Lat/n;->b:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_26

    invoke-interface {p1}, Lat/g;->l_()Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lat/n;->a:Lat/h;

    invoke-virtual {v0}, Lat/h;->e()Z

    move-result v0

    if-nez v0, :cond_25

    iget-object v0, p0, Lat/n;->a:Lat/h;

    iget-object v0, v0, Lat/h;->e:Lat/l;

    invoke-static {v0}, Lat/l;->d(Lat/l;)V

    :cond_25
    return-void

    :catchall_26
    move-exception v0

    :try_start_27
    monitor-exit p0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw v0
.end method
